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

echo "Installing i3 lock"
yes | sudo xbps-install -S i3-lock

echo "Installing polybar"
yes | sudo xbps-install -S polybar

echo "Installing i3 status"
yes | sudo xbps-install -S i3status

echo "Installing dmenu"
yes | sudo xbps-install -S dmenu

echo "Installing i3 htop"
yes | sudo xbps-install -S htop

echo "Installing feh"
yes | sudo xbps-install -S feh

echo "Installing scrot"
yes | sudo xbps-install -S scrot

echo "Installing firefox"
yes | sudo xbps-install -S firefox

echo "Installing font awesome"
yes | sudo xbps-install -S font-awesome

echo "Installing google fonts"
yes | sudo xbps-install -S google-fonts-ttf

echo "Installing nerd fonts"
yes | sudo xbps-install -S nerd-fonts-ttf

echo "Installing gucharmap"
yes | sudo xbps-install -S gucharmap

echo "Installing ImageMagick"
yes | sudo xbps-install -S ImageMagick

echo "Installing dev tools"
yes | sudo xbps-install -S base-devel

echo "Installing wget"
yes | sudo xbps-install -S wget

echo "Installing Python3"
yes | sudo xbps-install -S python3

echo "Installing Pip3"
yes | sudo xbps-install -S python3-pip

echo "Installing Pywal"
yes | sudo pip3 install pywal

echo "Installing Radare2"
yes | sudo pip3 install radare2

echo "Installing Selenium"
yes | sudo pip3 install selenium

echo "Installing Vim"
yes | sudo xbps-install -S vim

echo "Installing Neofetch"
yes | sudo xbps-install -S neofetch


git clone https://github.com/thisSyntaxSucksAndYouKnowIt/config_files

cd config_files
sudo cp xinitrc /etc/X11/xinit
cp .Xresources /home/$user_name
cp .vimrc /home/$user_name
mkdir /home/$user_name/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
mkdir /home/$user_name/.config
cp -r polybar /home/$user_name/.config
cp -r i3 /home/$user_name/.config
cp -r /home/$user_name/.vim/bundle/wal/colors/ /home/$user_name/.vim/

sudo ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d
