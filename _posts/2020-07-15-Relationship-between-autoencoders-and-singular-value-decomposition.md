---
title: Autoencoders and singular value decomposition
tags:
  - Autoencoders
  - SVD
  - Machine learning
---

Autoencoders are interesting mathematical objects that have many applications. 
These consist of two mappings, an _encoder_ $$E$$ which maps data to a vector, often named _embedding_, _code_ or _latent variables_, and a _decoder_ $$D$$ which maps the embedding back to the data. 
The optimization problem that we need to solve to obtain these mappings is the following:

$$
\text{minimize}_{\mathcal{D},\mathcal{E}} \ \  \tfrac{1}{2} \|  \mathbf{X} - D( E( \mathbf{X} ) ) \|_F^2,
$$

where $$ \mathbf{X} $$ is a matrix containing the centered data and
$$\mathcal{D}$$ and $$\mathcal{E}$$ are the set of parameters of the mappings $$D$$ and $$E$$, respectively. 

In practice, autoencoders are about learning the _identity mapping_, and what makes them interesting is that their training does not require any label.
This means there is the possibility of learning data-driven mappings in an _unsupervised way_ and compact representations of the data by encoding meaningful latent variables. 

Very often you read autoencoders are related to the _singular value decomposition (SVD)_ and _principal component analysis_ (for example in [Wikipedia](https://en.wikipedia.org/wiki/Autoencoder)).
These procedures have indeed many analogies, and in the trivial case of _linear autoencoders_ they really touch.
If we choose $$D$$ and $$E$$ to be matrices, hence linear mappings, the optimization problem becomes:

$$
\text{minimize}_{\mathbf{D},\mathbf{E}} \ \  \tfrac{1}{2} \|  \mathbf{X} - \mathbf{D} \mathbf{E} \mathbf{X} \|_F^2.
$$

We can introduce the optimization variables $$ \mathbf{A}  $$ and a constraint:

$$
\text{minimize}_{\mathbf{A},\mathbf{D},\mathbf{E}} \ \  \tfrac{1}{2} \|  \mathbf{X} - \mathbf{A} \mathbf{X} \|_F^2 
\ \ \text{s.t.} \mathbf{A} = \mathbf{D} \mathbf{E}.
$$

Let us ignore the constraint for the moment, which is what makes this problem difficult and nonconvex. 
If we cheat like that, we notice that the problem is a simple least squares 
and an analytical solution is available here:

$$
\mathbf{A}^{\star} = (\mathbf{X} \mathbf{X}^T)^{-1} (\mathbf{X} \mathbf{X}^T).
$$

When $$ (\mathbf{X} \mathbf{X}^T) $$ is invertible, 
this is actually the inverse of a matrix multiplied by itself, so it is an identity matrix $$ \mathbf{I} $$ which is precisely what a linear autoencoder should be.
This matrix, $$\mathbf{X} \mathbf{X}^T$$ is a square matrix by definition so its SVD will be $$ \mathbf{U} \mathbf{S} \mathbf{U}^T$$ 
where $$\mathbf{U}$$ is a unitary matrix and $$\mathbf{S}$$ is a diagonal matrix containing the singular values.
Using the SVD definition in the previous equation: 

$$
\mathbf{A}^{\star} = 
(\mathbf{U} \mathbf{S} \mathbf{U}^T)^{-1} (\mathbf{U} \mathbf{S} \mathbf{U}^T) =  
(\mathbf{U}^T)^{-1} \mathbf{S}^{-1} \mathbf{U}^{-1} \mathbf{U} \mathbf{S} \mathbf{U}^T =  
\mathbf{U}\mathbf{U}^T
$$

The constraint we previously ignored can now come back in the scene, 
the analytical solution of the linear autoencoder is $$ \mathbf{D}^\star = \mathbf{U} $$
and $$ \mathbf{E}^\star = \mathbf{U}^T $$.
If $$ \mathbf{X} $$ has rank $$n$$ only the first $$n$$ columns of $$\mathbf{U}$$ are needed.

#### References

* Baldi, Pierre. "Autoencoders, unsupervised learning, and deep architectures." Proceedings of ICML workshop on unsupervised and transfer learning. 2012.
* Theodoridis, Sergios. Machine learning: a Bayesian and optimization perspective. (Chapter 19) Academic press, 2015.
