---
permalink: "/adelfi/"
type: page
---
<style type="text/css">
audio {
      display: block;
      }
</style>

## Joint acoustic localization and dereverberation through plane wave decomposition and sparse regularization

### Abstract

Acoustic source localization and dereverberation are formulated jointly
as an inverse problem.
The inverse problem consists of the approximation of the sound field measured by a set of microphones.
The recorded sound pressure is matched
with that of a particular acoustic model
based on a collection of plane waves
arriving from different directions
at the microphone positions.
In order to achieve meaningful results,
spatial and spatio-spectral sparsity
can be promoted in
the weight signals controlling the plane waves.
The large-scale optimization problem
resulting from the inverse problem formulation
is solved using a first order optimization algorithm combined with a weighted overlap-add procedure.
It is shown that once the weight signals capable of effectively approximating the sound field are obtained, they can be readily used to localize a moving sound source in terms of direction of arrival (DOA) and to perform dereverberation in a highly reverberant environment.
Results from simulation experiments and from real measurements show that the proposed algorithm is robust against both localized and diffuse noise exhibiting a noise reduction in the dereverberated signals.

## Index
### Simulation results:


|  |sensor noise|diffuse babble noise|localized white noise|
|:-:|:-:|:-:|:-:|
| ADELFI $$l_1$$ | [🔗](#sensor40-ADELFI-_l1) |[🔗](#diffuse10-ADELFI-_l1) |[🔗](#local15-ADELFI-_l1) |
| ADELFI $$\Sigma l_2$$ | [🔗](#sensor40-ADELFI-_l21) |[🔗](#diffuse10-ADELFI-_l21) |[🔗](#local15-ADELFI-_l21) |
| SBL (SS) | [🔗](#sensor40-SBL-) |[🔗](#diffuse10-SBL-) |[🔗](#local15-SBL-) |
| ADA  | [🔗](#sensor40-ADA-) |[🔗](#diffuse10-ADA-) |[🔗](#local15-ADA-) |

### Measurement results:



| A | B | C | D | E |
|:-:|:-:|:-:|:-:|:-:|
|[🔗](#A) |[🔗](#B) |[🔗](#C) |[🔗](#D) |[🔗](#E) |




 Scenarios (D-E) involve moving sound source. 



### Legend:


* $$ \mathbf{s}_t $$ : (semi)-anechoic signal 
* $$ \tilde{\mathbf{p}}_t $$ : microphone signal
* $$ \bar{\mathbf{w}}_t $$ : dereverberated signal (single weight signal)
* $$ \bar{\mathbf{p}}_t $$ : dereverberated signal (using multiple weight signal)


## Simulation results



#### <a name="sensor40-ADELFI-_l1"></a> Simulations: scenario (i) sensor noise ($$40$$ dB SNR) ADELFI $$l_1$$

|                  | $$N_m = 4 $$ | $$N_m = 8 $$ | $$N_m = 12 $$ | $$N_m = 16 $$ | $$N_m = 20 $$ | $$N_m = 24 $$ |
|:----------------:|:----------------:|:----------------:|:-----------------:|:-----------------:|:-----------------:|:-----------------:|
| $$ \mathbf{s}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |
| $$ \tilde{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm4_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm8_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm12_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm16_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm20_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm24_sensor40.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{w}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm4_l1/sensor40/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm8_l1/sensor40/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm12_l1/sensor40/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm16_l1/sensor40/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm20_l1/sensor40/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm24_l1/sensor40/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm4_l1/sensor40/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm8_l1/sensor40/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm12_l1/sensor40/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm16_l1/sensor40/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm20_l1/sensor40/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm24_l1/sensor40/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |



#### <a name="sensor40-ADELFI-_l21"></a> Simulations: scenario (i) sensor noise ($$40$$ dB SNR) ADELFI $$\Sigma l_2$$

|                  | $$N_m = 4 $$ | $$N_m = 8 $$ | $$N_m = 12 $$ | $$N_m = 16 $$ | $$N_m = 20 $$ | $$N_m = 24 $$ |
|:----------------:|:----------------:|:----------------:|:-----------------:|:-----------------:|:-----------------:|:-----------------:|
| $$ \mathbf{s}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |
| $$ \tilde{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm4_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm8_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm12_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm16_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm20_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm24_sensor40.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{w}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm4_l21/sensor40/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm8_l21/sensor40/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm12_l21/sensor40/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm16_l21/sensor40/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm20_l21/sensor40/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm24_l21/sensor40/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm4_l21/sensor40/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm8_l21/sensor40/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm12_l21/sensor40/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm16_l21/sensor40/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm20_l21/sensor40/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm24_l21/sensor40/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |



#### <a name="sensor40-SBL-"></a> Simulations: scenario (i) sensor noise ($$40$$ dB SNR) SBL 

|                  | $$N_m = 4 $$ | $$N_m = 8 $$ | $$N_m = 12 $$ | $$N_m = 16 $$ | $$N_m = 20 $$ | $$N_m = 24 $$ |
|:----------------:|:----------------:|:----------------:|:-----------------:|:-----------------:|:-----------------:|:-----------------:|
| $$ \mathbf{s}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |
| $$ \tilde{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm4_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm8_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm12_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm16_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm20_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm24_sensor40.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm4/sensor40/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm8/sensor40/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm12/sensor40/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm16/sensor40/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm20/sensor40/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm24/sensor40/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |



#### <a name="sensor40-ADA-"></a> Simulations: scenario (i) sensor noise ($$40$$ dB SNR) ADA 

|                  | $$N_m = 4 $$ | $$N_m = 8 $$ | $$N_m = 12 $$ | $$N_m = 16 $$ | $$N_m = 20 $$ | $$N_m = 24 $$ |
|:----------------:|:----------------:|:----------------:|:-----------------:|:-----------------:|:-----------------:|:-----------------:|
| $$ \mathbf{s}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |
| $$ \tilde{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm4_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm8_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm12_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm16_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm20_sensor40.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm24_sensor40.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm4/sensor40/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm8/sensor40/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm12/sensor40/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm16/sensor40/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm20/sensor40/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm24/sensor40/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |



#### <a name="diffuse10-ADELFI-_l1"></a> Simulations: scenario (ii) diffuse babble noise ($$10$$ dB SNR) ADELFI $$l_1$$

|                  | $$N_m = 4 $$ | $$N_m = 8 $$ | $$N_m = 12 $$ | $$N_m = 16 $$ | $$N_m = 20 $$ | $$N_m = 24 $$ |
|:----------------:|:----------------:|:----------------:|:-----------------:|:-----------------:|:-----------------:|:-----------------:|
| $$ \mathbf{s}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |
| $$ \tilde{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm4_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm8_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm12_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm16_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm20_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm24_diffuse10.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{w}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm4_l1/diffuse10/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm8_l1/diffuse10/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm12_l1/diffuse10/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm16_l1/diffuse10/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm20_l1/diffuse10/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm24_l1/diffuse10/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm4_l1/diffuse10/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm8_l1/diffuse10/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm12_l1/diffuse10/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm16_l1/diffuse10/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm20_l1/diffuse10/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm24_l1/diffuse10/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |



#### <a name="diffuse10-ADELFI-_l21"></a> Simulations: scenario (ii) diffuse babble noise ($$10$$ dB SNR) ADELFI $$\Sigma l_2$$

|                  | $$N_m = 4 $$ | $$N_m = 8 $$ | $$N_m = 12 $$ | $$N_m = 16 $$ | $$N_m = 20 $$ | $$N_m = 24 $$ |
|:----------------:|:----------------:|:----------------:|:-----------------:|:-----------------:|:-----------------:|:-----------------:|
| $$ \mathbf{s}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |
| $$ \tilde{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm4_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm8_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm12_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm16_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm20_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm24_diffuse10.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{w}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm4_l21/diffuse10/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm8_l21/diffuse10/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm12_l21/diffuse10/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm16_l21/diffuse10/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm20_l21/diffuse10/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm24_l21/diffuse10/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm4_l21/diffuse10/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm8_l21/diffuse10/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm12_l21/diffuse10/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm16_l21/diffuse10/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm20_l21/diffuse10/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm24_l21/diffuse10/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |



#### <a name="diffuse10-SBL-"></a> Simulations: scenario (ii) diffuse babble noise ($$10$$ dB SNR) SBL 

|                  | $$N_m = 4 $$ | $$N_m = 8 $$ | $$N_m = 12 $$ | $$N_m = 16 $$ | $$N_m = 20 $$ | $$N_m = 24 $$ |
|:----------------:|:----------------:|:----------------:|:-----------------:|:-----------------:|:-----------------:|:-----------------:|
| $$ \mathbf{s}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |
| $$ \tilde{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm4_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm8_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm12_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm16_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm20_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm24_diffuse10.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm4/diffuse10/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm8/diffuse10/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm12/diffuse10/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm16/diffuse10/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm20/diffuse10/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm24/diffuse10/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |



#### <a name="diffuse10-ADA-"></a> Simulations: scenario (ii) diffuse babble noise ($$10$$ dB SNR) ADA 

|                  | $$N_m = 4 $$ | $$N_m = 8 $$ | $$N_m = 12 $$ | $$N_m = 16 $$ | $$N_m = 20 $$ | $$N_m = 24 $$ |
|:----------------:|:----------------:|:----------------:|:-----------------:|:-----------------:|:-----------------:|:-----------------:|
| $$ \mathbf{s}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |
| $$ \tilde{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm4_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm8_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm12_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm16_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm20_diffuse10.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm24_diffuse10.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm4/diffuse10/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm8/diffuse10/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm12/diffuse10/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm16/diffuse10/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm20/diffuse10/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm24/diffuse10/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |



#### <a name="local15-ADELFI-_l1"></a> Simulations: scenario (iii) localized white noise ($$15$$ dB SNR) ADELFI $$l_1$$

|                  | $$N_m = 4 $$ | $$N_m = 8 $$ | $$N_m = 12 $$ | $$N_m = 16 $$ | $$N_m = 20 $$ | $$N_m = 24 $$ |
|:----------------:|:----------------:|:----------------:|:-----------------:|:-----------------:|:-----------------:|:-----------------:|
| $$ \mathbf{s}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |
| $$ \tilde{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm4_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm8_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm12_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm16_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm20_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm24_local15.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{w}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm4_l1/local15/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm8_l1/local15/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm12_l1/local15/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm16_l1/local15/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm20_l1/local15/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm24_l1/local15/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm4_l1/local15/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm8_l1/local15/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm12_l1/local15/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm16_l1/local15/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm20_l1/local15/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm24_l1/local15/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |



#### <a name="local15-ADELFI-_l21"></a> Simulations: scenario (iii) localized white noise ($$15$$ dB SNR) ADELFI $$\Sigma l_2$$

|                  | $$N_m = 4 $$ | $$N_m = 8 $$ | $$N_m = 12 $$ | $$N_m = 16 $$ | $$N_m = 20 $$ | $$N_m = 24 $$ |
|:----------------:|:----------------:|:----------------:|:-----------------:|:-----------------:|:-----------------:|:-----------------:|
| $$ \mathbf{s}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |
| $$ \tilde{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm4_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm8_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm12_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm16_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm20_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm24_local15.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{w}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm4_l21/local15/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm8_l21/local15/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm12_l21/local15/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm16_l21/local15/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm20_l21/local15/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm24_l21/local15/w_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm4_l21/local15/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm8_l21/local15/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm12_l21/local15/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm16_l21/local15/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm20_l21/local15/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADELFI/Nm24_l21/local15/d_Nw500_Nl512_r_m0.1_spherical.wav"><a>play</a></audio> |



#### <a name="local15-SBL-"></a> Simulations: scenario (iii) localized white noise ($$15$$ dB SNR) SBL 

|                  | $$N_m = 4 $$ | $$N_m = 8 $$ | $$N_m = 12 $$ | $$N_m = 16 $$ | $$N_m = 20 $$ | $$N_m = 24 $$ |
|:----------------:|:----------------:|:----------------:|:-----------------:|:-----------------:|:-----------------:|:-----------------:|
| $$ \mathbf{s}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |
| $$ \tilde{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm4_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm8_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm12_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm16_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm20_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm24_local15.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm4/local15/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm8/local15/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm12/local15/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm16/local15/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm20/local15/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/SBL/Nm24/local15/d_SBL_r_m0.1_spherical.wav"><a>play</a></audio> |



#### <a name="local15-ADA-"></a> Simulations: scenario (iii) localized white noise ($$15$$ dB SNR) ADA 

|                  | $$N_m = 4 $$ | $$N_m = 8 $$ | $$N_m = 12 $$ | $$N_m = 16 $$ | $$N_m = 20 $$ | $$N_m = 24 $$ |
|:----------------:|:----------------:|:----------------:|:-----------------:|:-----------------:|:-----------------:|:-----------------:|
| $$ \mathbf{s}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio> |
| $$ \tilde{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm4_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm8_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm12_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm16_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm20_local15.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/refs/p_Nm24_local15.wav"><a>play</a></audio> |
| $$ \bar{\mathbf{p}}_t $$ |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm4/local15/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm8/local15/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm12/local15/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm16/local15/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm20/local15/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/simulations/ADA/Nm24/local15/d_ADA_r_m0.1_spherical.wav"><a>play</a></audio> |





## Measurement results





#### <a name="A"></a> Scenario A



 | $$ \mathbf{s}_t $$ | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording1/eigenmike/s_Fs8000.wav"><a>play</a></audio> |
|:-:|:-:|
| $$ \tilde{\mathbf{p}}_t $$ | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording1/eigenmike/p_Fs8000_eigenmike.wav"><a>play</a></audio> | 

| | ADELFI $$l_1$$ |  ADELFI $$\Sigma l_2$$ |  SBL  |  ADA  | 
|:-:|:-:| :-:| :-:| :-:| 
|$$ \bar{\mathbf{w}}_t  $$  | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording1/eigenmike/w_Fs8000_Nw500_Nl512_model_PW_reg_l1_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording1/eigenmike/w_Fs8000_Nw500_Nl512_model_PW_reg_l21_eigenmikenosph.wav"><a>play</a></audio> | | |
|$$ \bar{\mathbf{p}}_t  $$  | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording1/eigenmike/d_Fs8000_Nw500_Nl512_model_PW_reg_l1_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording1/eigenmike/d_Fs8000_Nw500_Nl512_model_PW_reg_l21_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording1/eigenmike/w_Fs8000_Nw500_Nl512_SBL_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording1/eigenmike/d_Fs8000_eigenmike_ADA.wav"><a>play</a></audio> |


#### <a name="B"></a> Scenario B



 | $$ \mathbf{s}_t $$ | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording2/eigenmike/s_Fs8000.wav"><a>play</a></audio> |
|:-:|:-:|
| $$ \tilde{\mathbf{p}}_t $$ | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording2/eigenmike/p_Fs8000_eigenmike.wav"><a>play</a></audio> | 

| | ADELFI $$l_1$$ |  ADELFI $$\Sigma l_2$$ |  SBL  |  ADA  | 
|:-:|:-:| :-:| :-:| :-:| 
|$$ \bar{\mathbf{w}}_t  $$  | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording2/eigenmike/w_Fs8000_Nw500_Nl512_model_PW_reg_l1_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording2/eigenmike/w_Fs8000_Nw500_Nl512_model_PW_reg_l21_eigenmikenosph.wav"><a>play</a></audio> | | |
|$$ \bar{\mathbf{p}}_t  $$  | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording2/eigenmike/d_Fs8000_Nw500_Nl512_model_PW_reg_l1_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording2/eigenmike/d_Fs8000_Nw500_Nl512_model_PW_reg_l21_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording2/eigenmike/w_Fs8000_Nw500_Nl512_SBL_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording2/eigenmike/d_Fs8000_eigenmike_ADA.wav"><a>play</a></audio> |


#### <a name="C"></a> Scenario C



 | $$ \mathbf{s}_t $$ | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording3/eigenmike/s_Fs8000.wav"><a>play</a></audio> |
|:-:|:-:|
| $$ \tilde{\mathbf{p}}_t $$ | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording3/eigenmike/p_Fs8000_eigenmike.wav"><a>play</a></audio> | 

| | ADELFI $$l_1$$ |  ADELFI $$\Sigma l_2$$ |  SBL  |  ADA  | 
|:-:|:-:| :-:| :-:| :-:| 
|$$ \bar{\mathbf{w}}_t  $$  | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording3/eigenmike/w_Fs8000_Nw500_Nl512_model_PW_reg_l1_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording3/eigenmike/w_Fs8000_Nw500_Nl512_model_PW_reg_l21_eigenmikenosph.wav"><a>play</a></audio> | | |
|$$ \bar{\mathbf{p}}_t  $$  | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording3/eigenmike/d_Fs8000_Nw500_Nl512_model_PW_reg_l1_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording3/eigenmike/d_Fs8000_Nw500_Nl512_model_PW_reg_l21_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording3/eigenmike/w_Fs8000_Nw500_Nl512_SBL_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task1/recording3/eigenmike/d_Fs8000_eigenmike_ADA.wav"><a>play</a></audio> |


#### <a name="D"></a> Scenario D



 | $$ \mathbf{s}_t $$ | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task3/recording1/eigenmike/s_Fs8000.wav"><a>play</a></audio> |
|:-:|:-:|
| $$ \tilde{\mathbf{p}}_t $$ | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task3/recording1/eigenmike/p_Fs8000_eigenmike.wav"><a>play</a></audio> | 

| | ADELFI $$l_1$$ |  ADELFI $$\Sigma l_2$$ |  ADA  | 
|:-:|:-:| :-:| :-:| 
|$$ \bar{\mathbf{w}}_t  $$  | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task3/recording1/eigenmike/w_Fs8000_Nw500_Nl512_model_PW_reg_l1_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task3/recording1/eigenmike/w_Fs8000_Nw500_Nl512_model_PW_reg_l21_eigenmikenosph.wav"><a>play</a></audio> | |
|$$ \bar{\mathbf{p}}_t  $$  | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task3/recording1/eigenmike/d_Fs8000_Nw500_Nl512_model_PW_reg_l1_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task3/recording1/eigenmike/d_Fs8000_Nw500_Nl512_model_PW_reg_l21_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task3/recording1/eigenmike/d_Fs8000_eigenmike_ADA.wav"><a>play</a></audio> |


#### <a name="E"></a> Scenario E



 | $$ \mathbf{s}_t $$ | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task3/recording3/eigenmike/s_Fs8000.wav"><a>play</a></audio> |
|:-:|:-:|
| $$ \tilde{\mathbf{p}}_t $$ | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task3/recording3/eigenmike/p_Fs8000_eigenmike.wav"><a>play</a></audio> | 

| | ADELFI $$l_1$$ |  ADELFI $$\Sigma l_2$$ |  ADA  | 
|:-:|:-:| :-:| :-:| 
|$$ \bar{\mathbf{w}}_t  $$  | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task3/recording3/eigenmike/w_Fs8000_Nw500_Nl512_model_PW_reg_l1_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task3/recording3/eigenmike/w_Fs8000_Nw500_Nl512_model_PW_reg_l21_eigenmikenosph.wav"><a>play</a></audio> | |
|$$ \bar{\mathbf{p}}_t  $$  | <audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task3/recording3/eigenmike/d_Fs8000_Nw500_Nl512_model_PW_reg_l1_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task3/recording3/eigenmike/d_Fs8000_Nw500_Nl512_model_PW_reg_l21_eigenmikenosph.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/adelfi/LOCATA/task3/recording3/eigenmike/d_Fs8000_eigenmike_ADA.wav"><a>play</a></audio> |




### Acknowledgments

Simulation results utilize the first 5 seconds of track 5 of Bang & Olufsen CD "Music for Archimedes". All rights of this anechoic sample belong to B&O. The authors would like to thank Søren Bech and B&O for allowing reproduction here.

Measurement results were obtained using the [LOCATA challenge database](https://lms.lnt.de/locata/) and the [CSTR VCTK database](http://homepages.inf.ed.ac.uk/jyamagis/page3/page58/page58.html).

This research work was carried out
at the ESAT Laboratory of KU Leuven,
the frame of the FP7-PEOPLE
Marie Curie Initial Training Network
"Dereverberation and Reverberation
of Audio, Music, and Speech (DREAMS)",
funded by the European Commission
under Grant Agreement no. 316969,
KU Leuven Impulsfonds IMP/14/037,
KU Leuven Internal Funds VES/16/032,
KU Leuven C2-16-00449
"Distributed Digital Signal Processing
for Ad-hoc Wireless Local Area Audio Networking".
The research leading to these results has received funding from the European Research Council under the European Union's Horizon 2020 research and innovation program / ERC Consolidator Grant: SONORA (no. 773268). This paper reflects only the authors' views and the Union is not liable for any use that may be made of the contained information. 
