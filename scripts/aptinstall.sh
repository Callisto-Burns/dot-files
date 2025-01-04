#!/bin/bash

sudo apt update

function install {
    which $1 &> /dev/null

    if [ $? -ne 0 ]; then
        echo "Installing: ${1}..."
        sudo apt install -y $1
    else
        echo "Already installed: ${1}"
    fi
}

# Basics
install git
install go
install npm
install nodejs
install g++
install gcc
install python3
install python3-pip
install python3-venv
install anaconda
install make
install cmake

# Fun stuff
install figlet
install lolcat
