##!/bin/bash
ListOfDotfile=("alacritty" "nitrogen" "fish" "i3" "nvim" "pcmanfm" "polybar" "rofi" "zathura")
for dotfile in ${ListOfDotfile[@]};do 
		if [ ! -d "$HOME/.config/$dotfile" ]
		then
				rm -rf $HOME/.config/$dotfile
		fi
		cp -rf ../$dotfile $HOME/.config/
done
cp ../.gitconfig $HOME/.gitconfig

