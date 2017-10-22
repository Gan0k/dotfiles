#!/usr/bin/env bash

TOSYMLINK="
.bash_aliases
.bash_profile
.bashrc
.gitconfig
.rtorrent.rc
.tmux.conf
.config/nvim
.ssh
"

for file in $TOSYMLINK
do
    ln -s $(pwd)/$file $HOME/$file
done

