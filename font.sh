#!/bin/bash

# from https://github.com/tsunesan3/awsome-jp-coding-fonts

sudo apt install python-fontforge fontforge git
cd
git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
git checkout -f v2.0.0
cd

wget http://yozvox.web.fc2.com/unitettc.zip
unzip -o unitettc.zip
chmod 755 unitettc/unitettc64
sudo mv unitettc/unitettc64 /usr/local/bin/
git clone https://github.com/tsunesan3/awsome-jp-coding-fonts.git .fonts

cd ~/nerd-fonts
git checkout .
patch -p1 < ~/fonts/tools/font-patcher.diff
fontforge -script font-patcher ../fonts/RictyDiminished/src/RictyDiminished-Regular.ttf -c
fontforge -script font-patcher ../fonts/RictyDiminished/src/RictyDiminished-Bold.ttf -c
fontforge -script font-patcher ../fonts/RictyDiminished/src/RictyDiminished-Oblique.ttf -c
fontforge -script font-patcher ../fonts/RictyDiminished/src/RictyDiminished-BoldOblique.ttf -c
unitettc64 RictyDiminished.ttc RictyDiminished-{Regular,Bold,Oblique,BoldOblique}.ttf
rm Ricty*.ttf
fontforge -script font-patcher ../fonts/RictyDiminished/src/RictyDiminishedDiscord-Regular.ttf -c
fontforge -script font-patcher ../fonts/RictyDiminished/src/RictyDiminishedDiscord-Bold.ttf -c
fontforge -script font-patcher ../fonts/RictyDiminished/src/RictyDiminishedDiscord-Oblique.ttf -c
fontforge -script font-patcher ../fonts/RictyDiminished/src/RictyDiminishedDiscord-BoldOblique.ttf -c
unitettc64 RictyDiminishedDiscord.ttc RictyDiminishedDiscord-{Regular,Bold,Oblique,BoldOblique}.ttf
rm Ricty*.ttf
mv RictyDiminished*.ttc ../fonts/RictyDiminished/

fc-cache -fv
UUID=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \')
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ font "RictyDiminished 12"
