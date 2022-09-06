#!/bin/bash

sudo pacman -Sy lightdm-gtk-greeter polybar rofi xorg nitrogen i3-gaps i3status i3lock ttf-dejavu alacritty fish base-devel firefox feh pcmanfm man-db man-pages texinfo fzf neofetch tree-sitter exa&&

#Install of yay to have acces to AUR
git clone https://aur.archlinux.org/yay.git&&
cd yay&&
makepkg -si&&
cd ..&&
rm -rf yay&&

#install dotfile
mkdir -p ~/.config
mv alacritty ~/.config
mv nitrogen ~/.config
mv fish ~/.config
mv i3 ~/.config
mv nvim ~/.config
mv pcmanfm ~/.config
mv polybar ~/.config
mv rofi ~/.config

#herald icon
sudo mv heraldstorm.ttf /usr/share/fonts/
yay nerd-fonts-complete
fc-cache -vf

yay nvim-packer&&

sudo systemctl enable lightdm
