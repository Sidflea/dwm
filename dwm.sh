#!/bin/bash

echo "==> Actualização do sistema"
sudo apt update
sudo apt upgrade -y

echo "==> Instalação de dependências essenciais"
sudo apt install -y build-essential git libx11-dev libxinerama-dev libxft-dev libxrandr-dev libxinerama1 libxft2 libx11-6 xorg xorg-xinit suckless-tools fonts-dejavu-core fonts-font-awesome feh picom vim

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
