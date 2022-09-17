#!/usr/bin/env bash

# install packer.nvim
# git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# sudo pacman -S polybar picom rofi feh fcitx5 unclutter

stow -t ~/.config -D nvim
stow -t ~/.config -D polybar
stow -t ~/.config -D picom
stow -t ~/.config -D rofi
stow -t ~/.config -D zathura
stow -t ~ -D xmonad
stow -t ~ -D xorg
stow -t ~ -D bash
