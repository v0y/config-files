#!/bin/bash

mkdir -p ~/.bpython
mkdir -p ~/.ssh
mkdir -p ~/.config
mkdir -p ~/.config/terminator
mkdir -p ~/.gitfiles

ln -si `pwd`/.bash_aliases ~/.bash_aliases
ln -si `pwd`/.bash_prompt ~/.bash_prompt
ln -si `pwd`/.bashrc ~/.bashrc
ln -si `pwd`/.bpython/* ~/.bpython/
ln -si `pwd`/.gitfiles/global-ignore ~/.gitfiles/global-ignore
ln -si `pwd`/.ssh/config ~/.ssh/config
ln -si `pwd`/.vimrc ~/.vimrc
ln -si `pwd`/.q3a/q3ut4/config.cfg ~/.q3a/q3ut4/config.cfg
ln -si `pwd`/.config/terminator/config ~/.config/terminator/config
ln -si `pwd`/.gitconfig ~/.gitconfig
ln -si `pwd`/.bash_completion ~/.bash_completion
ln -si `pwd`/.fab_bash_completion ~/.fab_bash_completion
ln -si `pwd`/.git_bash_completion ~/.git_bash_completion
ln -si `pwd`/.fab_zsh_completion ~/.fab_zsh_completion
ln -si `pwd`/.zsh_git_prompt ~/.zsh_git_prompt
ln -si `pwd`/.zsh_prompt ~/.zsh_prompt
ln -si `pwd`/.zshrc ~/.zshrc

sudo ln -si `pwd`/etc/hosts /etc/hosts
sudo ln -si `pwd`/etc/watchdog.conf /etc/watchdog.conf
