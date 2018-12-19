---
scope:
permalink: "jsld/"
type: pages
values:
layout: single
classes: wide
author_profile: false
---
<script type="text/javascript" async
  src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-MML-AM_CHTML">
</script>
<style type="text/css">
audio {
      width: 100px;
      }
</style>

## Joint source localization and dereverberation by sound field interpolation using sparse regularization

### Abstract

In this paper, source localization and dereverberation are formulated jointly as an inverse problem. The inverse problem consists in the interpolation of the sound field measured by a set of microphones by matching the recorded sound pressure with that of a particular acoustic model. This model is based on a collection of equivalent sources creating either spherical or plane waves. In order to achieve meaningful results, spatial, spatio-temporal and spatio-spectral sparsity can be promoted in the signals originating from the equivalent sources. The inverse problem consists of a large-scale optimization problem that is solved using a first order matrix-free optimization algorithm. It is shown that once the equivalent source signals capable of effectively interpolating the sound field are obtained, they can be readily used to localize a speech sound source in terms of Direction of Arrival (DOA) and to perform dereverberation in a highly reverberant environment.

### Audio Samples

|    Sparsity    | Spatio-temporal                                                                                     | Spatio-spectral                                                                                   | Spatial                                                                                            | Spatial                                                                                              |                                                                                                       |                                                                                         |
| -------------  |:---------------------------------------------------------------------------------------------------:|:-------------------------------------------------------------------------------------------------:|:--------------------------------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------:|
|   Model        | TESM                                                                                                |PWDM                                                                                               | PWDM                                                                                               | TESM                                                                                                 |Microphone                                                                                             |Anechoic                                                                                 |
| -------------  |:---------------------------------------------------------------------------------------------------:|:-------------------------------------------------------------------------------------------------:|:--------------------------------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------:|
| $$N_{m} = 4 $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm4_l1/w.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/PW/Nm4_l1/w.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/PW/Nm4_l21/w.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm4_l21/w.wav"><a>play</a></audio> | <audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm4_l21/p.wav"><a>play</a></audio> | <audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio>|
| $$N_{m} = 8 $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm8_l1/w.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/PW/Nm8_l1/w.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/PW/Nm8_l21/w.wav"><a>play</a></audio> |<audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm8_l21/w.wav"><a>play</a></audio> | <audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm8_l21/p.wav"><a>play</a></audio> | <audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio>|
| $$N_{m} =12 $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm12_l1/w.wav"><a>play</a></audio>|<audio controls="controls" type="audio/wav" src="/assets/jsld/PW/Nm12_l1/w.wav"><a>play</a></audio>|<audio controls="controls" type="audio/wav" src="/assets/jsld/PW/Nm12_l21/w.wav"><a>play</a></audio>|<audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm12_l21/w.wav"><a>play</a></audio>| <audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm12_l21/p.wav"><a>play</a></audio>| <audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio>|
| $$N_{m} =16 $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm16_l1/w.wav"><a>play</a></audio>|<audio controls="controls" type="audio/wav" src="/assets/jsld/PW/Nm16_l1/w.wav"><a>play</a></audio>|<audio controls="controls" type="audio/wav" src="/assets/jsld/PW/Nm16_l21/w.wav"><a>play</a></audio>|<audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm16_l21/w.wav"><a>play</a></audio>| <audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm16_l21/p.wav"><a>play</a></audio>| <audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio>|
| $$N_{m} =20 $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm20_l1/w.wav"><a>play</a></audio>|<audio controls="controls" type="audio/wav" src="/assets/jsld/PW/Nm20_l1/w.wav"><a>play</a></audio>|<audio controls="controls" type="audio/wav" src="/assets/jsld/PW/Nm20_l21/w.wav"><a>play</a></audio>|<audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm20_l21/w.wav"><a>play</a></audio>| <audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm20_l21/p.wav"><a>play</a></audio>| <audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio>|
| $$N_{m} =24 $$ |<audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm24_l1/w.wav"><a>play</a></audio>|<audio controls="controls" type="audio/wav" src="/assets/jsld/PW/Nm24_l1/w.wav"><a>play</a></audio>|<audio controls="controls" type="audio/wav" src="/assets/jsld/PW/Nm24_l21/w.wav"><a>play</a></audio>|<audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm24_l21/w.wav"><a>play</a></audio>| <audio controls="controls" type="audio/wav" src="/assets/jsld/TESM/Nm24_l21/p.wav"><a>play</a></audio>| <audio controls="controls" type="audio/wav" src="/assets/jsld/s.wav"><a>play</a></audio>|


### Acknowledgments

First 5 seconds of track 5 of Bang & Olufsen CD "Music for Archimedes". All rights of this anechoic sample belong to B&O. The authors would like to thank Søren Bech and B&O for allowing reproduction here.

This research work was carried out at the ESAT Laboratory of KU Leuven, the frame of the FP7-PEOPLE Marie Curie Initial Training Network "_Dereverberation and Reverberation
of Audio, Music, and Speech (DREAMS)_", funded by the European Commission under Grant Agreement no. 316969, KU Leuven Research Council CoE PFV/10/002 (OPTEC), the Interuniversity Attraction  Poles Programme initiated by the Belgian Science Policy Office IUAP P7/19 "_Dynamical systems control and optimization_" (DYSCO) 2012-2017, KU Leuven Impulsfonds IMP/14/037 and KU Leuven C2-16-00449 "_Distributed Digital Signal Processing for Ad-hoc Wireless Local Area Audio Networking_". The scientific responsibility is assumed by its authors.

