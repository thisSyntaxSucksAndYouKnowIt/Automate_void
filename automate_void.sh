#!/bin/bash

#nm-applet fonts noto-fonts display manager

cd 

git clone https://github.com/thisSyntaxSucksAndYouKnowIt/config_files

cd config_files
mv vimrc .vimrc
mv .vimrc /home/$(whoami)

mv Xresources .Xresources
mv Xresources /home/$(whoami)

sudo mv xinitrc /etc/X11/xinit

cd
mkdir .vim

echo "Updating system"
sudo xbps-install -Su

echo "Installing xorg"
sudo xbps-install -S xorg

echo "Installing alsa-utils"
sudo xbps-install -S alsa-utils

echo "Installing rxvt-unicode"
sudo xbps-install -S rxvt-unicode

echo "Installing i3 gaps"
sudo xbps-install -S i3-gaps

echo "Installing i3 status"
sudo xbps-install -S i3status

echo "Installing dmenu"
sudo xbps-install -S dmenu

echo "Installing i3 feh"
sudo xbps-install -S feh

echo "Installing dev tools"
sudo xbps-install -S base-devel

echo "Installing wget"
sudo xbps-install -S wget

echo "Installing Python3"
sudo xbps-install -S python3

echo "Installing Pip3"
sudo xbps-install -S python3-pip

echo "Installing Radare2"
sudo xbps-install -S radare2

echo "Installing Vim"
sudo xbps-install -S vim

echo "Installing Vim plugins"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c VundleUpdate

echo "Installing Git"
sudo xbps-install -S git

echo "Installing Neofetch"
sudo xbps-install -S neofetch
