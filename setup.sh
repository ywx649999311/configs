#!/bin/bash

CWD=${PWD}
GITCONFIG="gitconfig_remote"
GIT_CREDENTIALS="git-credentials"
GIT_COMPLETION="git-completion.bash"
GIT_PROMPT="git-prompt.sh"

ln -s "${CWD}/${GITCONFIG}" "${HOME}/.gitconfig"
ln -s "${CWD}/${GIT_CREDENTIALS}" "${HOME}/.git-credentials"
ln -s "${CWD}/${GIT_COMPLETION}" "${HOME}/git-completion.bash"
ln -s "${CWD}/${GIT_PROMPT}" "${HOME}/git-prompt.sh"

echo 'source ~/git-completion.bash' >> "${HOME}/.bashrc"

echo 'green="\[\033[0;32m\]"' >> "${HOME}/.bashrc"
echo 'blue="\[\033[0;34m\]"' >> "${HOME}/.bashrc"
echo 'purple="\[\033[0;35m\]"' >> "${HOME}/.bashrc"
echo 'reset="\[\033[0m\]"' >> "${HOME}/.bashrc"

echo 'source ~/git-prompt.sh' >> "${HOME}/.bashrc"
echo 'export GIT_PS1_SHOWDIRTYSTATE=1' >> "${HOME}/.bashrc"
echo 'export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"' >> "${HOME}/.bashrc"