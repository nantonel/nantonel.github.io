
file = open("../../_pages/adelfi.md", "w")


print(file,
"---
scope:
permalink: \"\/adelfi\/\"
type: pages
values:
layout: single
classes: wide
author_profile: false
---
<script type=\"text\/javascript\" async
  src=\"https:\/\/cdn.mathjax.org\/mathjax\/latest\/MathJax.js?config=TeX-MML-AM_CHTML\">
<\/script>
<style type=\"text\/css\">
audio {
      width: 100px;
      }
<\/style>

## Joint acoustic localization and dereverberation by sound field interpolation

### Abstract

Acoustic source localization and dereverberation are formulated jointly
as an inverse problem.
The inverse problem consists of the interpolation of the sound field measured by a set of microphones.
The recorded sound pressure is matched with that of a particular acoustic model.
This model is based on a collection of equivalent sources creating either spherical or plane waves.
In order to achieve meaningful results, spatial, spatio-temporal and spatio-spectral sparsity can be promoted in the signals originating from the equivalent sources.
The large-scale optimization problem
resulting from the inverse problem formulation
is solved using a first order matrix-free optimization algorithm combined with a weighted overlap-add procedure.
It is shown that once the equivalent source signals capable of effectively interpolating the sound field are obtained, they can be readily used to localize a moving sound source in terms of direction of arrival (DOA) and to perform dereverberation in a highly reverberant environment.
Results from simulation experiments and from real measurements show that the proposed algorithm is robust against both localized and diffuse noise exhibiting a noise reduction in the dereverberated signals.

"
)

noises = ["sensor40", "diffuse10", "local15"]
model = ["TESM","TESM","PWDM","PWDM","ADA"]
reg   = [  "_l1", "_l21",  "_l1", "_l21", ""]

println(file,"## Index")
println(file,"### Simulation results:")
println(file,"\n")

top = "|  |"
str = ""
for i in eachindex(model)
    if reg[i] == "_l1"
        regLTX = "\$\$l_1\$\$"
    elseif reg[i] == "_l21"
        regLTX = "\$\$\\Sigma l_2\$\$"
    else
        regLTX = ""
    end
    str *= "| $(model[i]) $(regLTX) | "
    for ii in eachindex(noises)

        if noises[ii] == "sensor40"
            scenario = "sensor noise"
        elseif noises[ii] == "diffuse10"
            scenario = "diffuse babble noise"
        elseif noises[ii] == "local15"
            scenario = "localized white noise"
        end
        if i == 1
            top *= scenario*"|"
        end

        str *= "[🔗](#$(noises[ii])-$(model[i])-$(reg[i])) |"
    end
    str *= "\n"
end

top *= "\n|"*prod([":-:|" for i = 1:length(noises)+1])*"\n"

print(file,top)
print(file,str)

println(file,"\n### Measurement results:")
println(file,"\n")

println(file,"\n| A | B | C | D | E |")
println(file,"|:-:|:-:|:-:|:-:|:-:|")
println(file,"|[🔗](#A) |[🔗](#B) |[🔗](#C) |[🔗](#D) |[🔗](#E) |")
println(file,"\n")

println(file,"\n\n Scenarios (D-E) involve moving sound source. \n\n")

println(file,"\n### Legend:")
println(file,"\n")
println(file,"* \$\$ \\mathbf{s} \$\$ : (semi)-anechoic signal ")
println(file,"* \$\$ \\tilde{\\mathbf{p}} \$\$ : microphone signal")
println(file,"* \$\$ \\hat{\\mathbf{w}} \$\$ : dereverberated signal (single weight signal)")
println(file,"* \$\$ \\hat{\\mathbf{p}}_D \$\$ : dereverberated signal (using multiple weight signal)")


println(file,"\n\n## Simulation results")
println(file,"\n\n")

for noise in noises

for i in eachindex(model)
    if reg[i] == "_l1"
        regLTX = "\$\$l_1\$\$"
    elseif reg[i] == "_l21"
        regLTX = "\$\$\\Sigma l_2\$\$"
    else
        regLTX = ""
    end

    if noise == "sensor40"
        scenario = "scenario (i) sensor noise (\$\$40\$\$ dB SNR)"
    elseif noise == "diffuse10"
        scenario = "scenario (ii) diffuse babble noise (\$\$10\$\$ dB SNR)"
    elseif noise == "local15"
        scenario = "scenario (iii) localized white noise (\$\$15\$\$ dB SNR)"
    end

    print(file,
"#### <a name=\"$(noise)-$(model[i])-$(reg[i])\"></a> Simulations: $(scenario) $(model[i]) $(regLTX)

|                  | \$\$N_m = 4 \$\$ | \$\$N_m = 8 \$\$ | \$\$N_m = 12 \$\$ | \$\$N_m = 16 \$\$ | \$\$N_m = 20 \$\$ | \$\$N_m = 24 \$\$ |
|:----------------:|:----------------:|:----------------:|:-----------------:|:-----------------:|:-----------------:|:-----------------:|
")

    st = "| \$\$ \\mathbf{s} \$\$ |"
    for Nm in [4;8;12;16;20;24]
        path = "/assets/jsld/s.wav"
        st *="<audio controls=\"controls\" type=\"audio/wav\" src=\"$(path)\"><a>play</a></audio> |" 
    end

    println(file,st)

    st = "| \$\$ \\tilde{\\mathbf{p}} \$\$ |"
    for Nm in [4;8;12;16;20;24]
        path = "/assets/adelfi/simulations/refs/p_Nm$(Nm)_$(noise).wav"
        st *="<audio controls=\"controls\" type=\"audio/wav\" src=\"$(path)\"><a>play</a></audio> |" 
    end

    println(file,st)

    if model[i] == "ADA"
        st = "| \$\$ \\hat{\\mathbf{p}}_D \$\$ |"
        for Nm in [4;8;12;16;20;24]
            path = "/assets/adelfi/simulations/$(model[i])/Nm$(Nm)$(reg[i])/$(noise)/d_ADA_r_m0.1_spherical.wav"
            st *="<audio controls=\"controls\" type=\"audio/wav\" src=\"$(path)\"><a>play</a></audio> |" 
        end

        println(file,st)
    else

        st = "| \$\$ \\hat{\\mathbf{w}} \$\$ |"
        for Nm in [4;8;12;16;20;24]
            path = "/assets/adelfi/simulations/$(model[i])/Nm$(Nm)$(reg[i])/$(noise)/w_Nw500_Nl512_r_m0.1_spherical.wav"
            st *="<audio controls=\"controls\" type=\"audio/wav\" src=\"$(path)\"><a>play</a></audio> |" 
        end

        println(file,st)

        st = "| \$\$ \\hat{\\mathbf{p}}_D \$\$ |"
        for Nm in [4;8;12;16;20;24]
            path = "/assets/adelfi/simulations/$(model[i])/Nm$(Nm)$(reg[i])/$(noise)/d_Nw500_Nl512_r_m0.1_spherical.wav"
            st *="<audio controls=\"controls\" type=\"audio/wav\" src=\"$(path)\"><a>play</a></audio> |" 
        end

        println(file,st)
    end
    println(file,"\n\n")
end
end


println(file,"\n\n## Measurement results")
println(file,"\n\n")

rec  = [1;2;3;1;3]
task = [1;1;1;3;3]
scenario = ["A","B","C","D","E"]
mic_array = "eigenmike"

for ii in eachindex(scenario)

path = "/assets/adelfi/LOCATA/task$(task[ii])/recording$(rec[ii])/$(mic_array)/"
print(file,
      "\n\n#### <a name=\"$(scenario[ii])\"></a> Scenario $(scenario[ii])\n\n")
print(file,
      "\n\n | \$\$ \\mathbf{s} \$\$ | <audio controls=\"controls\" type=\"audio/wav\" src=\"$(path)s_Fs8000.wav\"><a>play</a></audio> |\n|:-:|:-:|\n| \$\$ \\tilde{\\mathbf{p}} \$\$ | <audio controls=\"controls\" type=\"audio/wav\" src=\"$(path)p_Fs8000_eigenmike.wav\"><a>play</a></audio> | \n\n")
str = "| |"
mid = "|:-:|"
pd   = "|\$\$ \\hat{\\mathbf{p}}_D  \$\$  | "
pw   = "|\$\$ \\hat{\\mathbf{w}}    \$\$  | "
for i in eachindex(model)
    if reg[i] == "_l1"
        regLTX = "\$\$l_1\$\$"
    elseif reg[i] == "_l21"
        regLTX = "\$\$\\Sigma l_2\$\$"
    else
        regLTX = ""
    end
    if model[i] == "TESM"
        pdfilename = "d_Fs8000_Nw500_Nl512_model_AcousticOperators.TESM_reg$(reg[i])_eigenmike.wav"
        wfilename =  "w_Fs8000_Nw500_Nl512_model_AcousticOperators.TESM_reg$(reg[i])_eigenmike.wav"
    elseif model[i] == "PWDM"
        pdfilename = "d_Fs8000_Nw500_Nl512_model_AcousticOperators.PW_reg$(reg[i])_eigenmike.wav"
        wfilename = "w_Fs8000_Nw500_Nl512_model_AcousticOperators.PW_reg$(reg[i])_eigenmike.wav"
    elseif model[i] == "ADA"
        pdfilename = "d_Fs8000_eigenmike_ADA.wav"
    end
    str *= " $(model[i]) $(regLTX) | "
    mid *= ":-:| "
    pd  *= "<audio controls=\"controls\" type=\"audio/wav\" src=\"$(path)$(pdfilename)\"><a>play</a></audio> |"
    if model[i] == "ADA"
    pw  *= " |"
    else
    pw  *= "<audio controls=\"controls\" type=\"audio/wav\" src=\"$(path)$(wfilename)\"><a>play</a></audio> |"
    end

end
str *= "\n"
mid *= "\n"
pw *= "\n"
pd *= "\n"

print(file,str)
print(file,mid)
print(file,pw)
print(file,pd)

end

println(file,"\n\n\n")
print(file,
"### Acknowledgments

Simulation results utilize the first 5 seconds of track 5 of Bang & Olufsen CD \"Music for Archimedes\". All rights of this anechoic sample belong to B&O. The authors would like to thank Søren Bech and B&O for allowing reproduction here.

Measurement results were obtained using the [LOCATA challenge database](https://lms.lnt.de/locata/) and the [CSTR VCTK database](http://homepages.inf.ed.ac.uk/jyamagis/page3/page58/page58.html).

This research work was carried out
at the ESAT Laboratory of KU Leuven,
the frame of the FP7-PEOPLE
Marie Curie Initial Training Network
\"Dereverberation and Reverberation
of Audio, Music, and Speech (DREAMS)\",
funded by the European Commission
under Grant Agreement no. 316969,
KU Leuven Impulsfonds IMP/14/037,
KU Leuven Internal Funds VES/16/032,
KU Leuven C2-16-00449
\"Distributed Digital Signal Processing
for Ad-hoc Wireless Local Area Audio Networking\".
The research leading to these results has received funding from the European Research Council under the European Union's Horizon 2020 research and innovation program / ERC Consolidator Grant: SONORA (no. 773268). This paper reflects only the authors' views and the Union is not liable for any use that may be made of the contained information. 
"
)

close(file)
