#!/bin/bash

rm -rf ~/github/neovim
git clone https://github.com/neovim/neovim.git ~/github/neovim
cd ~/github/neovim

make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make installhttps://github.com/neovim/neovim.git

