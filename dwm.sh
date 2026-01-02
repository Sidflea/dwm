#!/bin/bash

echo "Instalar dependências para dwm"
sudo apt install build-essential libx11-dev libxinerama-dev sharutils suckless-tools libxft-dev stterm
sudo apt install git make gcc vim wget curl

echo "Git clone de Dwm, Dmenu, st"
mkdir suckless
cd suckless
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/st
echo "dwm instalar"
cd dwm
make
sudo make install
echo "dmenu instalar"
cd ../dmenu
make
sudo make install
echo "st instalar"
cd ../st
make 
sudo make install

