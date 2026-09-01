{ pkgs, ... }:

{
  imports = [
    ../aerospace
    ../keyboard
    ../kitty
    ../neovim
    ../sketchybar
    ../zsh
  ];

  home.packages = [ pkgs.gh ];

  home.stateVersion = "26.05";

  xdg.enable = true;
}
