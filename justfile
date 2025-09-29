# Note about conda environment activation:
# ----------------------------------------
# The recipes in this file suppose that we use the venv "imgui_bundle_pyodide_tooling/venv_pyodide"

PYODIDE_FOLDER := "repositories/pyodide"
BASE_PACKAGE_LIST := "numpy Pillow pandas ipython requests opencv-python typing-extensions pydantic munch matplotlib future scikit-learn peewee"


default:
  just --list


build_pyodide_base_packages:
    cd {{PYODIDE_FOLDER}} && pyodide build-recipes {{BASE_PACKAGE_LIST}}  --recipe-dir ../pyodide-recipes/packages --install


build_pyodide_imgui_bundle:
    cd {{PYODIDE_FOLDER}} && pyodide build-recipes {{BASE_PACKAGE_LIST}} imgui-bundle --recipe-dir ../pyodide-recipes/packages --install
    # cd {{PYODIDE_FOLDER}} && pyodide build-recipes daft_lib --install
