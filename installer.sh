#!/bin/bash

usage() { echo "No correct flag given" 1>&2; exit 1; }

install_all_dotfile() {
    mkdir -p ~/.config
    for f in ./.config/*; do
      rm -f ~/.config/"$f"
      cp -r "$f" ~/.config/
    done

}

while getopts "ua" arg; do
    case $arg in
        u)
            echo "updating dotfiles";;
        a)
            echo "installing for new archlinux"
            install_all_dotfile ;;
        *)
            usage;;
    esac
done
