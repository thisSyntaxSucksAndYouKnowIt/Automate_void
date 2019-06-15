#!/bin/bash

#nm-applet fonts noto-fonts display manager
user_name=$(whoami)

echo "Updating system"
yes | sudo xbps-install -Su

echo "Installing xorg"
yes | sudo xbps-install -S xorg

echo "Installing alsa-utils"
yes | sudo xbps-install -S alsa-utils

echo "Installing rxvt-unicode"
yes | sudo xbps-install -S rxvt-unicode

echo "Installing i3 gaps"
yes | sudo xbps-install -S i3-gaps

echo "Installing i3 status"
yes | sudo xbps-install -S i3status

echo "Installing dmenu"
yes | sudo xbps-install -S dmenu

echo "Installing i3 feh"
yes | sudo xbps-install -S feh

echo "Installing dev tools"
yes | sudo xbps-install -S base-devel

echo "Installing wget"
yes | sudo xbps-install -S wget

echo "Installing Python3"
yes | sudo xbps-install -S python3

echo "Installing Pip3"
yes | sudo xbps-install -S python3-pip

echo "Installing Radare2"
yes | sudo xbps-install -S radare2

echo "Installing Vim"
yes | sudo xbps-install -S vim

echo "Installing Neofetch"
yes | sudo xbps-install -S neofetch


git clone https://github.com/thisSyntaxSucksAndYouKnowIt/config_files

cd config_files
sudo mv xinitrc /etc/X11/xinit
mv Xresources .Xresources
mv .Xresources /home/$user_name
mv vimrc .vimrc
mv .vimrc /home/$user_name
mkdir /home/$user_name/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
