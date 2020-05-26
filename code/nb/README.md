# Run notebooks

```bash
julia --project run_notebook.jl
```

# Convert jupyter to markdown

Instal Conda. Make a separate env called `conda_jl`.
Install Jupyter:
```bash
conda install -c conda-forge jupyterlab
```

In Julia:
```julia
ENV["CONDA_JL_HOME"]= "/path_to_conda/miniconda/envs/conda_jl/"
] activate .
] instantiate
] build
```

Run:
```bash
julia --project jupyter2md.jl 2020-02-26-Notes-on-forward-backward-algorithm.ipynb
```
