ipynb = ARGS[1]

using Pkg
Pkg.activate(".")
Pkg.instantiate()

using Conda
  
run(`$(Conda.BINDIR)/jupyter nbconvert --to markdown $ipynb`)
md = split(ipynb, ".")[1]

file = read("$md.md",String)

scripts="---
layout: single
classes: wide
author_profile: false
---

<script type=\"text/javascript\" async 
  src=\"https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML\">
</script>
<style type=\"text/css\"> 
audio {width: 100px;}
</style>
"
# kind of dirty trick but seems to work
file = replace(file,"\$"=>"\$\$")
file = replace(file,"\$\$\$\$"=>"\$\$")
write("$md.md",scripts*file)
mv("$md.md", "../../_posts/$md.md"; force=true)
