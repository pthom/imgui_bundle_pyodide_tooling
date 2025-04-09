# Note about conda environment activation:
# ----------------------------------------
# The recipes in this file suppose that the conda environment "pyodide-env" has been created and activated.
# If it is not activated, you may run recipes like this:
#
#    conda run -n pyodide-env just your_recipe_name
#

PYODIDE_FOLDER := "repositories/pyodide"
BASE_PACKAGE_LIST := "numpy Pillow pandas ipython requests opencv-python typing-extensions pydantic munch matplotlib future scikit-learn peewee"


default:
  just --list


build_pyodide_base_packages:
    cd {{PYODIDE_FOLDER}} && pyodide build-recipes {{BASE_PACKAGE_LIST}} --install


build_pyodide_imgui_bundle:
    cd {{PYODIDE_FOLDER}} && pyodide build-recipes daft_lib --install
    # cd {{PYODIDE_FOLDER}} && pyodide build-recipes {{BASE_PACKAGE_LIST}} imgui_bundle --install

 