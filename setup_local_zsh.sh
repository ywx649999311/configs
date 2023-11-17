#!/bin/zsh

CWD=${PWD}
GITCONFIG="gitconfig_local_zsh"
JUPYTER_CONFIG="jupyter_notebook_config.py"
PYCODESTYLE="pycodestyle"

# pycodestyle config
ln -sf "${CWD}/${PYCODESTYLE}" "${HOME}/.config/pycodestyle"

# git bash configuration
ln -sf "${CWD}/${GITCONFIG}" "${HOME}/.gitconfig"
ln -sf "${CWD}/${JUPYTER_CONFIG}" "${HOME}/.jupyter/${JUPYTER_CONFIG}"

# jupyter notebook user settings
JLab="${HOME}/.jupyter/lab/user-settings"
if [ -d "$JLab" ]; then
    rm -r "$JLab"; 
fi

mkdir -p "${HOME}/.jupyter/lab/user-settings" 
cp -rf "${CWD}/user-settings" "${HOME}/.jupyter/lab/"

# copy zshrc
cp -f "${CWD}/other_config_files/.zshrc" "${HOME}"
