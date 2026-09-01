{
  nixpkgs-neovim,
  pkgs,
  ...
}:

{
  home.packages = [ pkgs.fd ];

  programs.neovim = {
    enable = true;
    package = nixpkgs-neovim.legacyPackages.${pkgs.stdenv.hostPlatform.system}.neovim-unwrapped;

    # Match the provider support from the previously installed Nix package.
    withPython3 = true;

    # Keep the repository config as the sole owner of ~/.config/nvim.
    sideloadInitLua = true;
  };

  xdg.configFile."nvim".source = ../nvim;
}
