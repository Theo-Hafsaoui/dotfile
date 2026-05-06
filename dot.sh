#!/bin/bash

usage() { echo "No correct flag given" 1>&2; exit 1; }
fedora_dotfile=("nvim" "fish" "sway" "waybar")
mac_dotfile=("nvim" "fish")

install_all_dotfile() {
    mkdir -p ~/.config
    for f in ./.config/*; do
      rm -f ~/.config/"$f"
      cp -r "$f" ~/.config/
    done
    install_font
}

install_mac_dotfile() {
    for f in "${mac_dotfile[@]}";do
      rm -f ~/.config/"$f"
      cp -r "$f" ~/.config/
    done
    install_font
}

install_generic_distro_dotfile() {
    for f in "${fedora_dotfile[@]}";do
      rm -f ~/.config/"$f"
      cp -r "$f" ~/.config/
    done
    install_font
}

install_font() {
    mkdir -p ~/.local/share/fonts && \
    cd ~/.local/share/fonts && \
    curl -fLo JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip && \
    unzip JetBrainsMono.zip && \
    rm JetBrainsMono.zip && \
    fc-cache -fv
}


while getopts "uamg" arg; do
    case $arg in
        u)
            echo "updating dotfiles";;
        a)
            echo "installing for new archlinux"
            install_all_dotfile ;;
        m)
            echo "installing for new mac"
            install_mac_dotfile;;
        g)
            echo "installing for generic distro"
            install_generic_distro_dotfile;;
        *)
            usage;;
    esac
done
