#!/bin/bash

# file
ln -is $(pwd)/.bash_profile ~/.bash_profile
ln -is $(pwd)/.bashrc       ~/.bashrc
ln -is $(pwd)/.gitconfig    ~/.gitconfig
ln -is $(pwd)/.screenrc     ~/.screenrc
ln -is $(pwd)/.tmux.conf    ~/.tmux.conf
ln -is $(pwd)/.vimrc        ~/.vimrc

# dir
ln -his $(pwd)/.emacs.d  ~/.emacs.d
ln -his $(pwd)/bin       ~/bin
