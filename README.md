# Tooling to build imgui_bundle for pyodide

## Repo structure

```
.
├── justfile
├── package_imgui_bundle -> repositories/pyodide/packages/imgui_bundle/
├── README.md
└── repositories/
    ├── imgui_bundle/ -> ../../imgui_bundle  # symlink to imgui_bundle repo
    └── pyodide/   # pyodide repo as a submodule
```

## Install


### Prerequisites

- Linux OS
- Conda


### Link imgui_bundle
- repositories/imgui_bundle should be a symlink to a imgui_bundle repo. Create it if needed 

### Prepare pyodide

cf https://pyodide.org/en/stable/development/building-from-sources.html

```
cd repositories/pyodide
git submodule update --init
conda env create -f environment.yml  # will create pyodide-env
conda activate pyodide-env
make   # will build emsdk, pyodide, and the packages
```

