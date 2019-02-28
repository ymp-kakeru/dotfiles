#!bin/bash

env LANGUAGE=C LC_MESSAGES=C xdg-user-dirs-gtk-update
echo "set completion-ignore-case on" >> ~/.inputrc

sudo apt install -y terminator unity-tweak-tool
echo "alias ympterm="terminator -l ymp&exit" " ~/.bashrc
sudo apt install -y python-pip python3

wget https://cmake.org/files/v3.6/cmake-3.6.2.tar.gz
tar xvf cmake-3.*.*.tar.gz  
./bootstrap && make && make install

sudo apt install -y ibus-mozc
ibus-daemon -drx
ibus-setup
sudo apt install -y emacs-mozc
sudo apt install -y texlive-full