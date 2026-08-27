{
  description = "Example nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-26.05-darwin";
    nix-darwin.url = "github:nix-darwin/nix-darwin/nix-darwin-26.05";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager/release-26.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nixpkgs-neovim.url = "github:NixOS/nixpkgs/a421ac6595024edcfbb1ef950a3712b89161c359";
  };

  outputs = inputs@{ self, nix-darwin, home-manager, nixpkgs, nixpkgs-neovim }:
  let
    configuration = { ... }: {
      # The official Lix installer manages Lix and its daemon.
      nix.enable = false;

      # Enable shell support in nix-darwin.
      programs.zsh.enable = true;
      # programs.fish.enable = true;

      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;

      # User that receives per-user nix-darwin services and settings.
      system.primaryUser = "m4xshen";
      users.users.m4xshen.home = "/Users/m4xshen";

      home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;
        extraSpecialArgs = { inherit nixpkgs-neovim; };
        users.m4xshen = {
          imports = [
            ./aerospace
            ./kitty
            ./neovim
            ./sketchybar
            ./zsh
          ];

          home.stateVersion = "26.05";

          xdg.enable = true;
        };
      };

      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 6;

      # The platform the configuration will be used on.
      nixpkgs.hostPlatform = "aarch64-darwin";
    };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#m3air
    darwinConfigurations."m3air" = nix-darwin.lib.darwinSystem {
      modules = [
        configuration
        home-manager.darwinModules.home-manager
      ];
    };
  };
}
