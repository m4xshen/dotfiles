{ pkgs, ... }:

{
  programs.sketchybar = {
    enable = true;
    service.enable = true;

    # The workspace scripts call the AeroSpace CLI.
    extraPackages = [ pkgs.aerospace ];

    config = ''
      CONFIG_DIR="${./.}"
      ${builtins.readFile ./sketchybarrc}
    '';
  };
}
