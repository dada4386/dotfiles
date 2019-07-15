#!/bin/bash

sudo apt-get install -y git build-essential ncurses-dev lua5.2 lua5.2-dev luajit python-dev \
    python3-dev ruby-dev python3-pip python-setuptools software-properties-common
pip3 install --upgrade neovim

sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim -y

sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim

