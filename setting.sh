#!/bin/bash

ORIG=$(cd $(dirname $0); pwd)
cd ~
HOME=`pwd`

# vimrc
mkdir -p ~/.config/nvim/
cd ~/.config/nvim
VIMRC="init.vim"
if [ -e $VIMRC ]; then
    mv $VIMRC ${VIMRC}.old
fi
ln -s $ORIG/$VIMRC $VIMRC

# userconfig
cd ~
mkdir -p ~/.cache
CONFIG=".cache/userconfig"
if [ -d $CONFIG ]; then
    mv $CONFIG ${CONFIG}.old
fi
ln -s $ORIG/$CONFIG $HOME/$CONFIG

$ORIG/vim_install.sh

if [ ! -e "./finish" ]; then
    cat bashrc_append >> ~/.bashrc
    touch finish
fi
