---
scope:
permalink: "/thesis/"
type: pages
values:
layout: single
classes: wide
author_profile: true
---

![](/assets/images/interauralv1.gif)

## Solving inverse problems in room acoustics using physical models, sparse regularization and numerical optimization

[Download Thesis (8.3 MB)](ftp://ftp.esat.kuleuven.be/SISTA/nantonel/18-96.pdf)

### Preface

This thesis is the result of more than five years[<sup>1</sup>](#footnote)
of roaming in the 
world of signal processing, acoustics and optimization. 
It has been a pleasant journey, despite its difficulties,
that taught me a lot. 
I am glad that after all there was a "path" that connected 
the various stages of this roaming, 
since very often I have felt quite lost. 
Eventually, I did not completely lose my way
thanks to the guide that many people kindly offered me.

Firstly, I would like to thank my supervisor Toon van Waterschoot 
who has always supported me during this project,
that he initially formulated and later wisely guided. 
Despite during my first interview he found out that 
I did not know what a least squares problem was, 
he still decided to trust me and grant me this great opportunity. 
Later on, I used (regularized) least squares very often, 
almost obsessively, to convince him that I grasped the concept. 
Perhaps I have failed to do so, since he offered me to 
study it for some more time even after the end of my PhD. 
I cannot express properly the gratitude that I feel 
for all the things Toon has done for me and for my life. 
I feel really lucky to have met him 
and I am glad that I have the opportunity 
to continue working together.

Marc Moonen also helped me a lot during my PhD 
and I would really like to thank him.
He always read my papers with great 
care and gave detailed, sometimes sarcastic, comments.
I have always appreciated
his meticulousness and his black humor 
and I hope I have learned both of them, 
at least a little bit!
 
I would also like to thank Patrick A. Naylor 
for his contributions and 
for hosting me in London at the Imperial College. 
I had a great time in London and I enjoyed very much 
helping the organization of the Summer Science Exhibition 
at the Royal Society. 

Enzo De Sena has been a great collaborator and office mate. 
I was really sad when he left KU Leuven
but at the same time very happy for his successful career.
I still miss the endless discussions we had during late office hours 
full of creative ideas and crazy stories of his. 
He still visits Leuven from time to time 
and I am always happy when he does 
since it feels like he had never left.
 
The collaboration with Lorenzo Stella began 
with very humble objectives: 
a small git repository where he 
was supposed to help me implementing 
a simplified version of an algorithm he developed 
together with Andreas Themelis and Panos Patrinos. 
Eventually, the repository rapidly split into four Julia packages! 
Lorenzo has been extremely helpful: 
despite he was writing his PhD thesis in the other side of the globe 
and later working full-time and dealing with early fatherhood, 
he dedicated so much time to endless online chats 
full of mathematics and coding issues. 
I want to thank him for all the things 
I have learned from him and for the time he dedicated to our project. 

I wish to thank Panos Patrinos as well. 
He has always been helpful 
and available for intensive meetings 
full of mathematical formulas.
I have to admit that often it has been difficult for me to follow him, 
similarly to what happened during my last holidays in Greece 
where I had to follow an alpine guide, named Panos as well,
on the top of a rock of Meteora.
In both cases it was quite rewarding to follow them. 

Besides my collaborators, I would like to thank the 
chair Bert Lauwers
and the members of the examination committee 
Lieven De Lathauwer, 
Wim Desmet, Andreas Jakobsson and Bram Cornelis
for their feedback on this thesis and the interesting
discussion of my preliminary defense.

I would like to thank Università degli Studi di Padova 
and the Technical University of Denmark (DTU) 
for the education they provided me. 
I wish to thank the European Commission 
and the Marie Skłodowska-Curie Actions 
for the funding and to all of the 
people of the DREAMS consortium 
for organizing the various schools that 
took place during the first three years of my PhD, 
in particular Aldona and my fellow PhD researchers 
Adam, Adel, Ante, Benjamin, Clément, Giacomo, Mathieu, 
Neo, Pablo (malo será! Gracias a tu familia también Bego e Olivia) and Thomas.

Thanks to all the (ex-)colleges and friends of DSP team, STADIUS, OPTEC and Group T:
Ahmed, Alexander, Amin (you have to come back and visit Venice without rain!), Andreas, Bruno, David, Duowei, Fernadno, Filippos, Gert, Giacomo, Giuliano (master of LaTeX & TikZ), Hanne, Hassan, Ida, Jasper (and spanish girl), Jeroen, Joe, John, Johnny, Jorge, Maja, Marijn, Matthew, Mina, Mohit, Mojtaba, Neetha, Paschalis, Pepe, Puya, Randy (thanks for the English tips and the possibility of a career in the punk album art covers), Robbe, Rodirigo, Rodolfo, Thomas, Wouter B. and Wouter L.. 
Thanks to all the office mates at Imperial: 
Alastair, Christine, Costas, Felicia, Hamza, John, Leo, Richard, Sina and Wei.
Thanks to the Salcazzo parties crew and friends in Belgium:
Alice, Ana, Bahar, Carlo, Dan, Daniele, Deniz, Ece, Enrico, Federico, Francesco, George, Ignazio, Iman, Juan, Leo, Maria, Marta, Nina and Oreste.
Thanks to Medina Mansion and the London crew: 
Ale M., Diana & Rob, Elia Blackbird, Francesca, 
Max, Migue
and in particular to the combination of Stanghe and Coco
that got me in Medina. 
Thanks to all the friends I have met in Sondrio,
in particular to Rosanna, Popi, nonna Anna (best 96 years old I have ever met) 
and signor Cielo
for having accepted me in their family.
Thanks to all of my friends in Casteo e dintorni, 
nonostante ci si veda e senta poco,
ogni volta che torno
mi fate sentire sempre a casa:
Ale, Alessia, Annet, Burri, Chiara, Curto, Dade, Damino, Dido, Dure, Elia, Elisa, Eva, Feda, Fiamma, Giada, Gian, Giulia, Jacopo, Lele, Leo, Massimo, Milan, Monica, Piero, Seba, Sleepy, Stanghe (anche se non siamo più amici!), Vale, Vera, Zampe.
 
Thanks to Frank Zappa for the beautiful soundtrack, 
to my old Dell "KRELIS" for resisting to the many nights of lonely Julia computing 
and to Alejandro Jodorowsky for the inspiring movies
I watched the days before the preliminary defense.

Finally, a really special thanks goes to my family.
Without the help, the wisdom and 
the love della mamma Maria e del papi Matteo 
I would not be the person that I am and 
I would have never accomplished this.
Thank you for all 
the phone calls always full of love and kind words della mamma and
the "studia!!" and "lavora!!'" del papi. 
Thanks to my brother Jacopo, to Angeliki
and to my sister Elettra ciki-bimba. 
You are the best I could ever wish for.
 
Last, but definitively not least, 
I would like to thank Silvia. 
Thanks to all you have done for me,
for being so brave, 
for all the happiness,
the laughter and the love you gave me.

Niccolò Antonello

August 2018

<a name="footnote"><sup>1</sup></a> Fortunately, it is not "fifty years": 
* [1] T. van Waterschoot and M. Moonen, “Fifty years of acoustic feedback control:
state of the art and future challenges,” Proc. IEEE, vol. 99, no. 2, pp. 288–327,
2011.
* [2] V. Välimäki, J. D. Parker, L. Savioja, J. O. Smith, and J. S. Abel, “Fifty years
of artificial reverberation,” IEEE Trans. Audio Speech Lang. Process., vol. 20,
no. 5, pp. 1421–1448, 2012.
* [3] V. Välimäki, J. Parker, L. Savioja, J. O. Smith, and J. Abel, “More than 50
years of artificial reverberation,” in Proc. AES 60th Int. Conf. Dereverberation
and Reverberation of Audio, Music, and Speech, 2016.

