#!/bin/bash
set -eu

ln -is $(pwd)/.bash_profile ~/.bash_profile
ln -is $(pwd)/.bashrc       ~/.bashrc
ln -is $(pwd)/.gitconfig    ~/.gitconfig
ln -is $(pwd)/.screenrc     ~/.screenrc
ln -is $(pwd)/.tmux.conf    ~/.tmux.conf

if [ $(uname) == 'Darwin' ]; then
    ln -his $(pwd)/.emacs.d ~/.emacs.d
    ln -his $(pwd)/bin      ~/bin
else
    ln -is $(pwd)/.emacs.d ~/.emacs.d
    ln -is $(pwd)/bin      ~/bin
fi
