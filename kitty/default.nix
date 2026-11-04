{
  programs.kitty = {
    enable = true;

    # Preserve Kitty's native shell integration behavior instead of having
    # Home Manager source it from the managed shell configuration.
    shellIntegration.mode = null;

    settings = {
      bold_font = "FiraCode Nerd Font Mono Retina";
      font_size = "15.0";
      shell_integration = "no-cursor";
      cursor_shape = "block";
      cursor_blink_interval = 0;

      hide_window_decorations = "titlebar-only";

      # Tab management
      tab_bar_edge = "top";
      tab_bar_align = "center";
      tab_bar_margin_height = "0.0 4.0";
      tab_bar_style = "slant";
      tab_bar_min_tabs = 2;
      tab_title_template = ''"{bell_symbol}{activity_symbol} {index} {tab.active_exe}"'';
      # Mark a tab whose unfocused window rang the bell until it is visited.
      bell_on_tab = ''"● "'';
      enable_audio_bell = "no";

      # Basic colors
      foreground = "#CDD6F4";
      background = "#000000";
      selection_foreground = "#000000";
      selection_background = "#F5E0DC";

      # Cursor colors
      cursor = "#F5E0DC";
      cursor_text_color = "#000000";

      # URL underline color when hovering with the mouse
      url_color = "#F5E0DC";

      # Window border colors
      active_border_color = "#B4BEFE";
      inactive_border_color = "#6C7086";
      bell_border_color = "#F9E2AF";

      # OS window titlebar colors
      wayland_titlebar_color = "system";
      macos_titlebar_color = "system";

      # Send Option as Alt so apps (e.g. herdr alt+1..9) receive alt chords.
      macos_option_as_alt = "yes";

      # Tab bar colors
      active_tab_foreground = "#CDD6F4";
      active_tab_background = "#000000";
      inactive_tab_foreground = "#6C7086";
      inactive_tab_background = "#09090e";
      tab_bar_background = "#09090e";

      # Marked text colors
      mark1_foreground = "#000000";
      mark1_background = "#B4BEFE";
      mark2_foreground = "#000000";
      mark2_background = "#CBA6F7";
      mark3_foreground = "#000000";
      mark3_background = "#74C7EC";

      # Terminal colors
      color0 = "#45475A";
      color8 = "#585B70";
      color1 = "#F38BA8";
      color9 = "#F38BA8";
      color2 = "#A6E3A1";
      color10 = "#A6E3A1";
      color3 = "#F9E2AF";
      color11 = "#F9E2AF";
      color4 = "#89B4FA";
      color12 = "#89B4FA";
      color5 = "#F5C2E7";
      color13 = "#F5C2E7";
      color6 = "#94E2D5";
      color14 = "#94E2D5";
      color7 = "#BAC2DE";
      color15 = "#A6ADC8";
    };

    # These directives occur more than once, so they cannot be represented by
    # the settings attribute set without losing values.
    extraConfig = ''
      font_family Noto Color Emoji Regular
      font_family FiraCode Nerd Font Mono Regular
      font_features FiraCodeNFM-Reg +zero +ss01 +ss02 +ss03 +ss04 +ss05 +cv31
      font_features FiraCodeNFM-Ret +zero +ss01 +ss02 +ss03 +ss04 +ss05 +cv31

      modify_font underline_position +3
      modify_font underline_thickness 150%
    '';
  };
}
