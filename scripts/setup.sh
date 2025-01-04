#!/bin/bash

./symlink.sh
./aptinstall.sh
./programs.sh

sudo apt upgrade -y

source ~/.bashrc

if [ -d ~/github ]; then
    echo "~/github directory already exists"
else
    mkdir ~/github/
fi

figlet "Get Fucked!" | lolcat

