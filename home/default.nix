{ pkgs, nixpkgs-unstable, ... }:

{
  imports = [
    ../aerospace
    ../keyboard
    ../kitty
    ../neovim
    ../sketchybar
    ../zsh
  ];

  home.packages = [
    pkgs.gh
    nixpkgs-unstable.legacyPackages.${pkgs.stdenv.hostPlatform.system}.herdr
  ];

  home.stateVersion = "26.05";

  xdg.enable = true;
}
