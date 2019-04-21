#!/usr/bin/env bash

TOSYMLINK="
.bash_aliases
.bash_profile
.bashrc
.config/nvim
.gitconfig
.local/share/nvim/site/pack
.rtorrent.rc
.ssh
.tmux.conf
"

for file in $TOSYMLINK
do
    ln -s $(pwd)/$file $HOME/$file
done

