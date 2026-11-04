{ pkgs, ... }:

{
  imports = [
    ../aerospace
    ../herdr
    ../keyboard
    ../kitty
    ../neovim
    ../sketchybar
    ../zsh
  ];

  home.packages = [
    pkgs.gh
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
