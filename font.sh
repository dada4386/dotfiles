#!/bin/bash

sudo apt install wget -y
wget https://github.com/miiton/Cica/releases/download/v5.0.1/Cica_v5.0.1_with_emoji.zip
unzip Cica_v5.0.1_with_emoji.zip
rm Cica_v5.0.1_with_emoji.zip

mkdir -p ~/.fonts/Cica
mv Cica-* ~/.fonts/Cica

# fc-cache -fv
if [ -n "`which gsettings`" ]; then
    UUID=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \')
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ font "Cica 12"
fi
