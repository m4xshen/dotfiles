#!/usr/bin/env bash

# install packer.nvim
# git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# sudo pacman -S polybar picom rofi feh fcitx5 unclutter

stow -t ~/.config -S nvim
stow -t ~/.config -S polybar
stow -t ~/.config -S picom
stow -t ~/.config -S rofi
stow -t ~/.config -S zathura
stow -t ~ -S xmonad
stow -t ~ -S xorg
stow -t ~ -S bash
