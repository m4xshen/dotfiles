{ config, pkgs, ... }:

{
  programs.aerospace = {
    enable = true;
    launchd.enable = true;

    settings = {
      config-version = 2;
      accordion-padding = 30;
      default-root-container-layout = "tiles";
      default-root-container-orientation = "auto";
      enable-normalization-flatten-containers = true;
      enable-normalization-opposite-orientation-for-nested-containers = true;
      on-focus-changed = [ ];
      on-focused-monitor-changed = [ "move-mouse monitor-lazy-center" ];
      on-window-detected = [ ];
      workspace-to-monitor-force-assignment = { };

      gaps = {
        inner.horizontal = 16;
        inner.vertical = 16;
        outer.left = 16;
        outer.bottom = 16;
        outer.top = 45;
        outer.right = 16;
      };

      after-startup-command = [ "exec-and-forget ${pkgs.sketchybar}/bin/sketchybar --reload" ];
      exec-on-workspace-change = [
        "/bin/bash"
        "-c"
        "${pkgs.sketchybar}/bin/sketchybar --trigger aerospace_workspace_change FOCUSED_WORKSPACE=$AEROSPACE_FOCUSED_WORKSPACE"
      ];

      key-mapping.preset = "qwerty";

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
        "cmd-shift-enter" = "exec-and-forget open -n '${config.home.homeDirectory}/Applications/Home Manager Apps/kitty.app'";
      };
    };
  };
}
