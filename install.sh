#!/usr/bin/env bash

TO_SYMLINK="
.bash_aliases
.bash_profile
.config/nvim
.local/share/nvim/site/pack
.tmux.conf
"

SCRIPT_CWD=$(dirname $(realpath "$0"))

for file in ${TO_SYMLINK}
do
    ln -s ${SCRIPT_CWD}/$file $HOME/$file
done
