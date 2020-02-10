#!/bin/bash

sudo apt-get install -y git build-essential ncurses-dev lua5.2 lua5.2-dev luajit python-dev clang-format \
    python3-dev ruby-dev python3-pip python-setuptools software-properties-common npm tmux
pip3 install --user neovim pynvim powerline-status cpplint flake8 autopep8 isort

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim -y

sudo npm install --global neovim

sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
