{
  launchd.agents.key-remapping = {
    enable = true;

    config = {
      ProgramArguments = [
        "/usr/bin/hidutil"
        "property"
        "--set"
        (builtins.toJSON {
          UserKeyMapping = [
            {
              # Caps Lock -> Escape.
              HIDKeyboardModifierMappingSrc = 30064771129;
              HIDKeyboardModifierMappingDst = 30064771113;
            }
            {
              # Right Command -> Right Control.
              HIDKeyboardModifierMappingSrc = 30064771303;
              HIDKeyboardModifierMappingDst = 30064771300;
            }
          ];
        })
      ];

      RunAtLoad = true;
    };
  };
}
