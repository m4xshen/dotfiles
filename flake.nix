{
  description = "Portable nix-darwin and Home Manager configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-26.05-darwin";
    nix-darwin.url = "github:nix-darwin/nix-darwin/nix-darwin-26.05";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager/release-26.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nixpkgs-neovim.url = "github:NixOS/nixpkgs/a421ac6595024edcfbb1ef950a3712b89161c359";
  };

  outputs = { self, nix-darwin, home-manager, nixpkgs, nixpkgs-neovim }:
  let
    homeModule = {
      imports = [ ./home ];
      _module.args = { inherit nixpkgs-neovim; };
    };
    hosts = import ./hosts.nix;

    mkMac =
      {
        system,
        username,
        extraModules ? [ ],
      }:
      nix-darwin.lib.darwinSystem {
        modules = [
          home-manager.darwinModules.home-manager
          {
            # The official Lix installer manages Lix and its daemon.
            nix.enable = false;

            # Set Git commit hash for darwin-version.
            system.configurationRevision = self.rev or self.dirtyRev or null;

            # User that receives per-user nix-darwin services and settings.
            system.primaryUser = username;
            users.users.${username}.home = "/Users/${username}";

            system.defaults.NSGlobalDomain._HIHideMenuBar = true;
            system.defaults.dock.autohide = true;

            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.${username}.imports = [ homeModule ];
            };

            # Used for backwards compatibility, please read the changelog before changing.
            # $ darwin-rebuild changelog
            system.stateVersion = 6;

            nixpkgs.hostPlatform = system;
          }
        ] ++ extraModules;
      };
  in
  {
    # Reusable user configuration for other Home Manager flakes.
    homeManagerModules.default = homeModule;

    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#mac
    darwinConfigurations = nixpkgs.lib.mapAttrs (_: host: mkMac host) hosts;
  };
}
