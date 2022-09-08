#!/bin/bash
echo "<----------------------------->"
echo " |Instalation des packets|"
echo "<----------------------------->"
sudo pacman -Sy lightdm-gtk-greeter polybar rofi xorg nitrogen i3-gaps i3status i3lock ttf-dejavu alacritty fish base-devel firefox feh pcmanfm man-db man-pages texinfo fzf neofetch tree-sitter exa&&

#Install of yay to have acces to AUR
echo "<----------------------------->"
echo " |Instalation de yay|"
echo "<----------------------------->"
git clone https://aur.archlinux.org/yay.git&&
cd yay&&
makepkg -si&&
cd ..&&
rm -rf yay&&

echo "<----------------------------->"
echo " |copie des dotfiles|"
echo "<----------------------------->"
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
yay -Syu lightdm-webkit2-theme-glorious
sudo sed -i 's/^\(#?greeter\)-session\s*=\s*\(.*\)/greeter-session = lightdm-webkit2-greeter #\1/ #\2g' /etc/lightdm/lightdm.conf&&
sudo sed -i 's/^webkit_theme\s*=\s*\(.*\)/webkit_theme = glorious #\1/g' /etc/lightdm/lightdm-webkit2-greeter.conf&&
sudo sed -i 's/^debug_mode\s*=\s*\(.*\)/debug_mode = true #\1/g' /etc/lightdm/lightdm-webkit2-greeter.conf&&
