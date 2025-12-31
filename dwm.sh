#!/bin/bash

echo "==> Actualização do sistema"
sudo apt update
sudo apt upgrade -y

echo "==> Instalação de dependências essenciais"
sudo apt install xorg xserver-xorg-core xserver-xorg-input-all xserver-xorg-video-all build-essential git libx11-dev libxinerama-dev libxft-dev libxcb1-dev libxrandr-dev libxinerama1 libxft2 libfontconfig1 fonts-dejavu dbus-x11 xinit picom 

echo "==> Criar directório suckless"
mkdir -p ~/suckless
cd ~/suckless

echo "==> Clone dwm"
git clone https://git.suckless.org/dwm

echo "==> Clone st"
git clone https://git.suckless.org/st

echo "==> Clone dmenu"
git clone https://git.suckless.org/dmenu

echo "==> Make dwm/st/dmenu"
cd dwm 
sudo make clean install -y
cd ..
cd st
sudo make clean install -y
cd ..
cd dmenu
sudo make clean install -y

