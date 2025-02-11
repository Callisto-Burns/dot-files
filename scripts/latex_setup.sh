
#!/bin/bash

sudo apt update
sudo apt install zathura -y

# these lines will likely break when a new version is released
rm -rf /usr/local/texlive/2024
rm -rf ~/.texlive2024

cd ~/Downloads
curl -L -o install-tl-unx.tar.gz https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
zcat < install-tl-unx.tar.gz | tar xf -
rm install-tl-unx.tar.gz
cd install-tl-*
sudo perl ./install-tl --no-interaction

# this line will likely break when a new version is released
echo 'export PATH="$PATH:/usr/local/texlive/2024/bin/x86_64-linux"' >> ~/.bashrc
echo 'export MANPATH="$MANPATH:/usr/local/texlive/2024/texmf-dist/doc/man"' >> ~/.bashrc
echo 'export INFOPATH="$INFOPATH:/usr/local/texlive/2024/texmf-dist/doc/info"' >> ~/.bashrc
cd ..
rm -rf install-tl-*

sudo apt install -y xdotool libcanberra-gtk-module
