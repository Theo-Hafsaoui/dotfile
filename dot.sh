#!/bin/bash

usage() { echo "No correct flag given" 1>&2; exit 1; }
mac_dotfile=("nvim" "fish")
fedora_dotfile=("nvim" "fish")

install_all_dotfile() {
    mkdir -p ~/.config
    for f in ./.config/*; do
      rm -f ~/.config/"$f"
      cp -r "$f" ~/.config/
    done
}

install_mac_dotfile() {
    for f in "${mac_dotfile[@]}";do
      rm -f ~/.config/"$f"
      cp -r "$f" ~/.config/
    done
}

install_fedora_dotfile() {
    for f in "${fedora_dotfile[@]}";do
      rm -f ~/.config/"$f"
      cp -r "$f" ~/.config/
    done
}


while getopts "uam" arg; do
    case $arg in
        u)
            echo "updating dotfiles";;
        a)
            echo "installing for new archlinux"
            install_all_dotfile ;;
        m)
            echo "installing for new mac"
            install_mac_dotfile;;
        *)
            usage;;
    esac
done
