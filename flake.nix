{
  description = "Example nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-26.05-darwin";
    nix-darwin.url = "github:nix-darwin/nix-darwin/nix-darwin-26.05";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nixpkgs-neovim.url = "github:NixOS/nixpkgs/a421ac6595024edcfbb1ef950a3712b89161c359";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nixpkgs-neovim }:
  let
    configuration = { pkgs, ... }: {
      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      environment.systemPackages = [
        nixpkgs-neovim.legacyPackages.${pkgs.stdenv.hostPlatform.system}.neovim
        pkgs.kitty
        pkgs.vim
      ];

      services.aerospace = {
        enable = true;
        settings = {
          config-version = 2;

          gaps = {
            inner.horizontal = 16;
            inner.vertical = 16;
            outer.left = 16;
            outer.bottom = 16;
            # SketchyBar height (45) plus the previous top padding (32).
            outer.top = 45 + 32;
            outer.right = 16;
          };

          after-startup-command = [ "exec-and-forget sketchybar --reload" ];
          exec-on-workspace-change = [
            "/bin/bash"
            "-c"
            "sketchybar --trigger aerospace_workspace_change FOCUSED_WORKSPACE=$AEROSPACE_FOCUSED_WORKSPACE"
          ];

          mode.main.binding = {
            # Focus window.
            "cmd-h" = "focus left";
            "cmd-j" = "focus down";
            "cmd-k" = "focus up";
            "cmd-l" = "focus right";

            # Focus workspace.
            "cmd-1" = "workspace 1";
            "cmd-2" = "workspace 2";
            "cmd-3" = "workspace 3";
            "cmd-4" = "workspace 4";
            "cmd-5" = "workspace 5";
            "cmd-6" = "workspace 6";
            "cmd-7" = "workspace 7";
            "cmd-8" = "workspace 8";
            "cmd-9" = "workspace 9";

            # Move window to workspace and follow focus.
            "cmd-shift-1" = [ "move-node-to-workspace 1" "workspace 1" ];
            "cmd-shift-2" = [ "move-node-to-workspace 2" "workspace 2" ];
            "cmd-shift-3" = [ "move-node-to-workspace 3" "workspace 3" ];
            "cmd-shift-4" = [ "move-node-to-workspace 4" "workspace 4" ];
            "cmd-shift-5" = [ "move-node-to-workspace 5" "workspace 5" ];
            "cmd-shift-6" = [ "move-node-to-workspace 6" "workspace 6" ];
            "cmd-shift-7" = [ "move-node-to-workspace 7" "workspace 7" ];
            "cmd-shift-8" = [ "move-node-to-workspace 8" "workspace 8" ];
            "cmd-shift-9" = [ "move-node-to-workspace 9" "workspace 9" ];

            "cmd-m" = "layout floating tiling";
            "cmd-f" = "fullscreen";
            "cmd-shift-enter" = "exec-and-forget open -n '/Applications/Nix Apps/kitty.app'";
          };
        };
      };

      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";

      # Enable alternative shell support in nix-darwin.
      # programs.fish.enable = true;

      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;

      # User that receives per-user nix-darwin services and settings.
      system.primaryUser = "m4xshen";

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
      modules = [ configuration ];
    };
  };
}
