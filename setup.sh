#!/bin/bash

CWD=${PWD}
GITCONFIG="gitconfig_remote"
GIT_COMPLETION="git-completion.bash"
GIT_PROMPT="git-prompt.sh"

# git bash configuration
ln -sf "${CWD}/${GITCONFIG}" "${HOME}/.gitconfig"
ln -sf "${CWD}/${GIT_COMPLETION}" "${HOME}/git-completion.bash"
ln -sf "${CWD}/${GIT_PROMPT}" "${HOME}/git-prompt.sh"

# jupyter notebook user settings
JLab="${HOME}/.jupyter/lab/user-settings/@jupyterlab/"
if [ -d "$JLab" ]; then
    rm -r "$JLab"; 
fi

# mkdir -p "${HOME}/.jupyter/lab/user-settings/@jupyterlab/" 
ln -sf "${CWD}/user-settings/" "${HOME}/.jupyter/lab/user-settings/" 

__prompt='

# Enable tab completion
source ~/git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
white="\[\033[0;37m\]"
reset="\[\033[0m\]"

# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="$purple\u$green\$(__git_ps1)$blue \W $white$ $reset" 
'

echo "$__prompt">> "${HOME}/.bashrc"

source "${HOME}/.bashrc"