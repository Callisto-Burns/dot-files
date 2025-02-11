#!/bin/bash

sudo chmod +x ./*

./symlink.sh
./aptinstall.sh
./neovim_setup.sh
./docker_setup.sh
./latex_setup.sh

sudo apt upgrade -y

source ~/.bashrc

if [ -d ~/github ]; then
    echo "~/github directory already exists"
else
    mkdir ~/github/
fi

figlet "Get Fucked!" | lolcat

