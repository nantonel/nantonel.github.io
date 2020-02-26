<script type="text/javascript" async 
  src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML">
</script>
<style type="text/css"> 
audio {width: 100px;}
</style>

These are some notes on the Forward-Backward algorithm. They make sense to me, hopefully they will make sense to some others. Code is written in Julia language but should be as simple as pseudo-code.

## Markov model  definitions

We assume the state $$s_j \in \mathcal{N}$$ is defined as an integer.
A state sequence is defined as $$\mathbf{s} \in \mathcal{N}^{N_t}$$, where $$N_t$$ is the number of time steps.
We assume a finite number of states $$N_s$$. 
The Hidden Markov Model (HMM) are defined as $$ \lambda = \{\mathbf{A}, \mathbf{a}, \mathcal{B}  \}$$.
Here $$\mathbf{A} \in \mathcal{R}^{N_s \times N_s}$$ transition matrix where $$p(s_t=j|s_{t-1}=i)= a_{ij}$$ with $$a_{ij}$$ is the $$(i,j)$$ element of $$\mathbf{A}$$.
This means that we ahve a Markov process of order 1.    
$$ \mathbf{a} \in \mathcal{R}^{N_s} $$ are the initial state distributions.
$$\mathcal{B} = \{ b_1, \dots b_{N_s} \}$$ are a set of distributions, one per state where $$p(y_t|s_j)=b_{s_j}(y_t)$$ (Observation independence, memoryless model) where $$y_t$$ is the observation at the time $$t$$. 


```julia
using Distributions, LinearAlgebra, Combinatorics

# define Markov model's parameters (λ)
Ns = 2           # number of states
a = [0.5; 0.5]  # initial state probability  
A = [0.7 0.3; 0.3 0.7] # transmission Matrix  [a_11 a21; a12 a_22]
# Must be row stotastic: [sum(A[i,:]) for i in 1:size(A,1)] .== 1

B = [Categorical([0.9, 0.1]), Categorical([0.2, 0.8])] 
# observation distribution [b_1; b_2]
# Tells what is the probability of a state given an observation  P(y_t|s_i)
# e.g. `pdf(D[1],2) == 0.1` gives the probability 
# of being in state 1 if we observed y_t = 2 
return
```

## Posterior likelihood

Say we have an observation $$\mathbf{y} \in \mathcal{R}^{N_t}$$ where $$N_t$$ is an integer indicating time steps.

Let's compute the likelihood between our Markov model with parameters $$\lambda$$ and the observations $$\mathbf{y}$$.

Using the law of total probability, this likelihood can be defined as:

$$p_\lambda ( \mathbf{y} ) =  
\sum_{\mathbf{s} \in \mathcal{S}} p_{\lambda} (\mathbf{y} | \mathbf{s} ) p( \mathbf{s} ) $$

where
$$ p_{\lambda} (\mathbf{y} | \mathbf{s} ) $$ is the likelihood of observation given a state sequence,
$$ p( \mathbf{s} ) $$ is probability of a particular state sequence and
$$ \mathcal{S} $$ is the set of all possible state sequences.  

Why do we need to compute $$p_{\lambda}(\mathbf{y})$$? 
One reason is to learn the parameters $$\lambda$$ (training) for a given set of examples.

In this case we want to maximize $$p_{\lambda}(\mathbf{y})$$:

$$\lambda^* = \arg \min _{\lambda} -p_{\lambda} (\mathbf{y})$$

where $$\lambda^*$$ is the set of parameters such that a local minimum is reached.
Notice that this is an example of _unsupervised learning_. There is no labelled data.

This problem is generally a nonconvex problem: typically the _Expectation–maximization (EM) algorithm_ is used.

A simplified summary of EM algorithm is the following:
  0. start from an initial guess of $$\lambda^0$$, $$k = 0$$
  1. find a convex approximation (auxiliary function) of $$-p_\lambda(\mathbf{y})$$, call it $$ Q(\lambda, \lambda^{k}) $$
  2. solve $$\lambda^{k+1} = \arg \min Q(\lambda, \lambda^{k})$$ 
  3. check if stopping criteria is reached otherwise $$k \leftarrow k+1$$ and go to 1

More information about the EM algorithm can be found in [1].
  
Solving the optimization problem of point $$2$$ can done efficiently by computing the forward-backward algorithm.

But first let's have a look at a brute force approach for computing $$p_\lambda(\mathbf{y})$$
to start with a baseline.

We can compute $$p_\lambda ( \mathbf{y} )$$ using brute force, 
i.e. for all of the elements of $$\mathcal{S}$$, what we need is 
$$p_\lambda (\mathbf{y} | \mathbf{s} ) = \prod_{t = 1}^{N_t} b_{s_t} (y_t)$$ where $$y_t$$ is the $$t$$-th element of $$\mathbf{y}$$ (observation independence) and
$$P_\lambda (\mathbf{s}) = a_{s_0} \prod_{t = 1}^T a_{s_{t-1},s_t}$$ where 
$$a_{s_0}$$ is the $$s_0$$-th element of $$\mathbf{a}$$ and 
$$a_{s_{t-1},s_t}$$ is the $$(s_{t-1},s_t)$$-th of $$\mathbf{A}$$  (Markov process order 1).


```julia
Nt = 5                     # time window length
y = [1;1;2;1;1]            # observations

s_all = collect(multiset_permutations([1;2],[5;5],5))

# this has all possible state sequences e.g. [1;1;1;1;1], [1;1;1;1;2] ...
# these are Ns^Nt permutations

# Probability of sequence of states
Pλ_s = zeros(length(s_all)) 
for z = 1:length(s_all)
    Pλ_s[z] = a[1] # initial distribution, since they are equal so we don't need to do this twice
    for t = 2:Nt
        Pλ_s[z] *= A[ s_all[z][t-1], s_all[z][t] ]
    end
end
@assert sum(Pλ_s) ≈ 1 # check it's a probability 

# Likelihood of O given a sequence of states
pλ_y_s = ones(length(s_all)) 
for z = 1:length(s_all)
    for t = 1:Nt
        pλ_y_s[z] *= pdf(B[ s_all[z][t] ], y[t])
    end
end

Pλ = sum(Pλ_s .* pλ_y_s)

```




    0.03430370049999999



### Baum's forward

Brute force can easily become intractable since we have to compute likelihoods and probabilities for $$N_s^{N_t}$$ times.

It is possible to express $$p_\lambda (\mathbf{y})$$ by marginalizing the likelihood at a specific time $$t$$:    

$$p_\lambda (\mathbf{y}) = \sum_{j = 1}^{N_s} p_{\lambda} (\mathbf{y}, s_t = j),$$

using the conditional probability definition we can further decompose the summand into: 

$$ p_{\lambda} (\mathbf{y},s_t = j) =  
p_{\lambda} (y_1, \dots, y_t, s_t = j) \cdot p_{\lambda} (y_{t+1} \dots y_{T} | y_1, \dots, y_t, s_t = j) $$

and drop the dependence of $$\{ y_1, \dots, y_t \}$$ in the conditional likelihood since it is independent of previous states (observation independence).

We can now define the two terms of the product as:

* $$\alpha_j(t) =  p_{\lambda} (y_1, \dots, y_t, s_t = j)$$
* $$\beta_j (t) = p_{\lambda} (y_{t+1} \dots y_{T} | s_t = j)$$

We need to manipulate $$\alpha_j(t)$$ as follows: 

* $$p_{\lambda} (y_1, \dots, y_t, s_t = j) = \sum_{i=1}^{N_s} p_{\lambda} (y_1, \dots, y_t, s_t = j, s_{t-1} = i)$$ 
marginalization

* $$\sum_{i=1}^{N_s} p_{\lambda} (y_1, \dots, y_t, s_t = j, s_{t-1} = i) = 
\sum_{i=1}^{N_s} p_{\lambda} (y_1, \dots, y_{t-1}, s_{t-1} = i) \cdot p_{\lambda}(y_t, s_t = j |  y_1, \dots, y_{t-1}, s_{t-1} = i) $$ conditional probability definition

* $$
\sum_{i=1}^{N_s} \alpha_{t-1}(i) \cdot p_{\lambda}(y_{t}, s_t = j | y_{t-1}, s_{t-1} = i) 
= \sum_{i=1}^{N_s} \alpha_{t-1}(i) 
\cdot p_{\lambda}(y_{t} |  y_{t-1}, s_t = j, s_{t-1} = i) 
\cdot p_{\lambda}(s_t = j | y_t, y_{t-1}, s_{t-1} = i)
$$ conditional  

* $$
\sum_{i=1}^{N_s} \alpha_{t-1}(i) p(y_t | s_{t} = j) P(s_t = j | s_{t-1} = i)  
= \sum_{i=1}^{N_s} \alpha_{t-1}(i) b_j(y_t) a_{ij}
$$ dropping terms due to Markov order and observation independence

To summarize:

$$\alpha_t(j) = \sum_{i=1}^S \alpha_{t-1}(i) a_{ij} b_j(y_t) $$ for $$t = 1, \dots, N_t$$, $$j = 1, \dots, N_s$$

and set $$\alpha_0 (j) = a_j$$ for $$j = 1, \dots, Ns$$

Notice that $$\alpha_j(T) = p_{\lambda} (y_1, \dots, y_T, s_T = j)$$, comparing this with the definition of $$p_\lambda(\mathbf{y})$$:

$$p_\lambda(\mathbf{y}) = \sum_{j = 1}^S \alpha_{N_t} (j)$$

Meaning that the forward algorithm can be used to compute value of the cost function.
 


```julia
function Baum_forward(A,a,B,y)
    Nt, Ns = length(y), size(A,1)
    alpha = zeros(Nt,Ns)
    for j = 1:Ns
        alpha[1,j] = a[j]*pdf( B[j], y[1] )
    end
    
    for t = 2:Nt
        for j = 1:Ns
            for i = 1:Ns
                alpha[t,j] += alpha[t-1,i]*A[i,j]*pdf( B[j], y[t] )    
            end
        end
    end
    return alpha
end

alpha = Baum_forward(A,a,B,y)
@assert sum(Pλ_s .* pλ_y_s) ≈ sum(alpha[end,:]) 
println(sum(alpha[end,:]))
```

    0.034303700500000006


### Baum's backwards

We can also compute   

$$\beta_j (t) = p_{\lambda} (y_{t+1} \dots y_{T} | s_t = j)$$

in a similar fashion.

By applying similar tricks as before it turns out that by setting

$$\beta_j(T) = 1 \ \forall j = 1, \dots, N_s$$ 

$$\beta_j(t)$$ can be compute going back through time (backwards):

$$\beta_j(t) = \sum_{k=1}^{N_s} \beta_{t+1}(k) a_{jk} b_k (y_{t+1})$$ $$t = N_t-1,\dots,1$$.

Once we compute this by definition we have:

$$p_{\lambda} (\mathbf{y}) = \sum_{j = 1}^{N_s} \alpha_j(t) \beta_j(t) $$ $$\forall t = 1, \dots N_t$$






```julia
function Baum_backward(A,B,y)
    Nt, Ns = length(y), size(A,1)
    beta = zeros(Nt,Ns)
    beta[end,:] .= 1
    for t = Nt-1:-1:1
        for j = 1:Ns
            for k = 1:Ns
                beta[t,j] += beta[t+1,k]*A[j,k]*pdf( B[k], y[t+1] )
            end
        end
    end
    return beta
end

beta = Baum_backward(A,B,y)
@assert all(sum(alpha.*beta,dims=2) .≈ sum(alpha[end,:]))
sum(alpha.*beta,dims=2)
```




    5×1 Array{Float64,2}:
     0.0343037005        
     0.034303700500000006
     0.034303700500000006
     0.034303700500000006
     0.034303700500000006



## Getting posterior probabilities

Baum's forward and backward algorithms suffer of underflow: 
as $$N_t$$ increases $$\alpha_{N_t} (j) \rightarrow 0$$ $$\beta_1 (j) \rightarrow 0$$.
Additionally only likelihoods are calculated.

In what follows we show that it is possible to solve the underflow issue and actually obtain _posterior probabilities_.

Posterior probability is defined as:

$$p_{\lambda}(s_t = j | y_1, \dots, y_t) = p_\lambda(s_t = j, y_1, \dots, y_T) / p(\mathbf{y})$$

we can split denominator and numerator as before:

$$\left( p_\lambda(s_t = j, y_1, \dots y_t) \cdot p_\lambda(y_1, \dots y_t | s_t = j) \right) /
 \left( p(y_1, \dots, y_t) p(y_{t+1} \dots y_{T} | y_1, \dots, y_t)  \right)
$$

then we have:
* $$
\bar{\alpha}_t(j) = p_\lambda(s_t = j, y_1, \dots y_t) /  p(y_1, \dots, y_t) = p_\lambda(s_t = j | y_1, \dots y_t) 
$$
  * can be interpreted the probability of being at state $$j$$ given observations up to $$t$$.

* $$
\bar{\beta}_t(j) = p_\lambda(y_1, \dots y_t | s_t = j) /  p(y_{t+1} \dots y_{T} | y_1, \dots, y_t)
$$
  * has a more difficult interpretation


Applying the conditional probability definition on denominator and numerator of $$\bar{\alpha}_t(j)$$:

$$
\bar{\alpha}_t(j) = 
\left( p_\lambda (s_t = j ,y_t | y_1, \dots, y_{t-1}) p(y_1,\dots,y_{t-1}) \right) /
\left( p(y_{t} | y_{1}, \dots, y_{t-1}) p(y_1,\dots,y_{t-1}) \right)
$$
$$
\bar{\alpha}_t(j) = 
p_\lambda (s_t = j ,y_t | y_1, \dots, y_{t-1})  /
p(y_{t} | y_{1}, \dots, y_{t-1}) 
$$

Expanding numerator:

$$
p_\lambda (s_t = j, y_t | y_1, \dots, y_{t-1}) = 
\sum_{i = 1}^{N_s} p_\lambda (s_{t-1} = i, s_t = j, y_t | y_1, \dots, y_{t-1})
=
\sum_{i = 1}^{N_s} \bar{\alpha}_{t-1} (i) a_{ij} b_j (y_t)
$$

Expressing the denominator using the numerator expression: 

$$
p(y_{t} | y_{1}, \dots, y_{t-1}) = 
\sum_{j = 1}^{N_s} p_{\lambda} (s_t = j,y_t | y_1, \dots, y_{t-1})
=
\sum_{j=1}^{N_s} \sum_{i = 1}^{N_s} \bar{\alpha}_{t-1} (i) a_{ij} b_j (y_t)
$$

So we get 
$$
\bar{\alpha}_t(j) = c_t^{-1}  \sum_{i=1}^{N_s} \bar{\alpha}_{t-1}(i) a_{ij} b_j(y_t)
$$

where $$c_t = \sum_{i = 1}^{N_s} \bar{\alpha}_i (t)$$. So we have exactly the same as Baum's Forward with the only difference that a scaling $$c_t$$ is applied.

Similar stuff happens for $$\bar{\beta}_t(j) = c_t^{-1} \sum_{k=1}^{N_s} \bar{\beta}_{t+1}(k) a_{jk} b_k (y_{t+1})$$.

Posterior probabilities are then given by:

$$
\gamma_{t}(j) = \alpha_{t}(j) \beta_{t}(j) = p(s_t = j | \mathbf{y}) 
$$

They give the probability of being at state $$j$$ given the future and past observations.


### References

[1] Liporace, L. "Maximum likelihood estimation for multivariate observations of Markov sources." IEEE Transactions on Information Theory 28.5 (1982): 729-734.

[2] Devijver, Pierre A. "Baum's forward-backward algorithm revisited." Pattern Recognition Letters 3.6 (1985): 369-373.

[3] Bilmes, Jeff A. "A gentle tutorial of the EM algorithm and its application to parameter estimation for Gaussian mixture and hidden Markov models." International Computer Science Institute 4.510 (1998): 126.
