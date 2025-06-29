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


### Link imgui_bundle
- repositories/imgui_bundle should be a symlink to a imgui_bundle repo. Create it if needed 

### Prepare pyodide

cf https://pyodide.org/en/stable/development/building-from-sources.html

```
python3.13 -m venv venv_pyodide
source venv_pyodide/bin/activate
cd repositories/pyodide
git submodule update --init
cd pyodide-build 
pip install -v .
cd ..
make   # will build emsdk, pyodide, and the packages
```

