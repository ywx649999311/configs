#!/bin/zsh

CWD=${PWD}
GITCONFIG="gitconfig_local_zsh"
# GIT_COMPLETION="git-completion.bash"
# GIT_PROMPT="git-prompt.sh"
JUPYTER_CONFIG="jupyter_notebook_config.py"

# pycodestyle config
ln -sf "${CWD}/${PYCODESTYLE}" "${HOME}/.config/pycodestyle"

# git bash configuration
ln -sf "${CWD}/${GITCONFIG}" "${HOME}/.gitconfig"
# ln -sf "${CWD}/${GIT_COMPLETION}" "${HOME}/git-completion.bash"
# ln -sf "${CWD}/${GIT_PROMPT}" "${HOME}/git-prompt.sh"
ln -sf "${CWD}/${JUPYTER_CONFIG}" "${HOME}/.jupyter/${JUPYTER_CONFIG}"

# jupyter notebook user settings
JLab="${HOME}/.jupyter/lab/user-settings/@jupyterlab/"
if [ -d "$JLab" ]; then
    rm -r "$JLab"; 
fi

mkdir -p "${HOME}/.jupyter/lab/user-settings/@jupyterlab/" 
cp -rf "${CWD}/user-settings/." "${HOME}/.jupyter/lab/user-settings/@jupyterlab"
