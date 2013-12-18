#!/bin/bash

ln -si `pwd`/.bash_aliases ~
ln -si `pwd`/.bash_prompt ~
ln -si `pwd`/.bashrc ~
ln -si `pwd`/.gitfiles/global-ignore ~/.gitfiles/
ln -si `pwd`/.ssh/config ~/.ssh
ln -si `pwd`/.vimrc ~
ln -si `pwd`/.q3a/q3ut4/config.cfg ~/.q3a/q3ut4/
ln -si `pwd`/.config/terminator/config ~/.config/terminator
ln -si `pwd`/.gitconfig ~
ln -si `pwd`/.bash_completion ~
ln -si `pwd`/.fab_bash_completion ~
ln -si `pwd`/.git_bash_completion ~

sudo ln -si `pwd`/etc/hosts /etc/
