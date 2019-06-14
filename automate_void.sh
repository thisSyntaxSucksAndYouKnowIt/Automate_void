#!/bin/bash

#nm-applet fonts noto-fonts display manager

cd
cd git

git clone https://github.com/thisSyntaxSucksAndYouKnowIt/config_files

cd config_files
mv vimrc .vimrc
mv .vimrc /home/$(whoami)

mv Xresources .Xresources
mv .Xresources /home/$(whoami)

sudo mv xinitrc /etc/X11/xinit

echo "Updating system"
y | sudo xbps-install -Su

echo "Installing xorg"
y | sudo xbps-install -S xorg

echo "Installing alsa-utils"
y | sudo xbps-install -S alsa-utils

echo "Installing rxvt-unicode"
y | sudo xbps-install -S rxvt-unicode

echo "Installing i3 gaps"
y | sudo xbps-install -S i3-gaps

echo "Installing i3 status"
y | sudo xbps-install -S i3status

echo "Installing dmenu"
y | sudo xbps-install -S dmenu

echo "Installing i3 feh"
y | sudo xbps-install -S feh

echo "Installing dev tools"
y | sudo xbps-install -S base-devel

echo "Installing wget"
y | sudo xbps-install -S wget

echo "Installing Python3"
y | sudo xbps-install -S python3

echo "Installing Pip3"
y | sudo xbps-install -S python3-pip

echo "Installing Radare2"
y | sudo xbps-install -S radare2

echo "Installing Vim"
y | sudo xbps-install -S vim

echo "Installing Vim plugins"
cd/home/$(whoami)
mkdir .vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo "Installing Git"
y | sudo xbps-install -S git

echo "Installing Neofetch"
y | sudo xbps-install -S neofetch
