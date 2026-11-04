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
    pkgs.terminal-notifier
  ];

  programs.git.enable = true;

  programs.delta = {
    enable = true;
    enableGitIntegration = true;
    options = {
      dark = true;
      syntax-theme = "Catppuccin Mocha";
    };
  };

  home.stateVersion = "26.05";

  xdg.enable = true;
}
