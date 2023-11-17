#!/bin/bash

CWD=${PWD}
GITCONFIG="gitconfig_local"
GIT_COMPLETION="git-completion.bash"
GIT_PROMPT="git-prompt.sh"
JUPYTER_CONFIG="jupyter_notebook_config.py"
PYCODESTYLE="pycodestyle"

# pycodestyle config
ln -sf "${CWD}/${PYCODESTYLE}" "${HOME}/.config/pycodestyle"

# git bash configuration
ln -sf "${CWD}/${GITCONFIG}" "${HOME}/.gitconfig"
ln -sf "${CWD}/${GIT_COMPLETION}" "${HOME}/git-completion.bash"
ln -sf "${CWD}/${GIT_PROMPT}" "${HOME}/git-prompt.sh"
ln -sf "${CWD}/${JUPYTER_CONFIG}" "${HOME}/.jupyter/${JUPYTER_CONFIG}"

# jupyter notebook user settings
JLab="${HOME}/.jupyter/lab/user-settings"
if [ -d "$JLab" ]; then
    rm -r "$JLab"; 
fi

mkdir -p "${HOME}/.jupyter/lab/user-settings" 
cp -rf "${CWD}/user-settings" "${HOME}/.jupyter/lab/"