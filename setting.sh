#!/bin/bash

ORIG=$(cd $(dirname $0); pwd)
cd ~
HOME=`pwd`

# vimrc
VIMRC=".vimrc"
if [ -e $VIMRC ]; then
    mv $VIMRC ${VIMRC}.old
fi
ln -s $ORIG/$VIMRC $HOME/$VIMRC

# userconfig
mkdir -p ~/.cache
CONFIG=".cache/userconfig"
if [ -d $CONFIG ]; then
    mv $CONFIG ${CONFIG}.old
fi
ln -s $ORIG/$CONFIG $HOME/$CONFIG

$ORIG/vim_install.sh
