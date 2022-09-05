#!/bin/bash

sudo pacman -S xorg nitrogen i3-gaps rofi i3status i3lock ttf-dejavu alacritty fish base-devel firefox feh pcman man-db man-pages texinfo&&

#Install of yay to have acces to AUR
git clone git clone https://aur.archlinux.org/yay.git&&
cd yay
makepkg -si
cd ..
rm -rf yay

#install dotfile
mkdir -p ~/.config
mv alacritty ~/.config
mv fish ~/.config
mv i3 ~/.config
mv nvim ~/.config
mv pcman ~/.config
mv polybar ~/.config
mv rofi ~/.config

#herald icon
sudo mv heraldstorm.ttf /usr/share/fonts/
yay nerd-fonts-complete
fc-cache -vf
