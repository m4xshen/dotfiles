{ pkgs, nixpkgs-unstable, ... }:

let
  toml = pkgs.formats.toml { };
in
{
  home.packages = [
    nixpkgs-unstable.legacyPackages.${pkgs.stdenv.hostPlatform.system}.herdr
  ];

  xdg.configFile."herdr/config.toml".source = toml.generate "herdr-config.toml" {
    onboarding = false;

    keys = {
      switch_tab = [ "prefix+1..9" "alt+1..9" ];
      previous_workspace = "alt+k";
      next_workspace = "alt+j";
    };

    ui.toast.delivery = "system";
  };
}
