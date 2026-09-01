{ config, ... }:

{
  home.sessionVariables = {
    EDITOR = "nvim";
    JAVA_HOME = "/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home";
    ANDROID_HOME = "$HOME/Library/Android/sdk";
    LUA_PATH = "/usr/local/share/lua/5.1/?.lua;./?.lua;/opt/homebrew/share/luajit-2.1/?.lua;/usr/local/share/lua/5.1/?/init.lua;/opt/homebrew/share/lua/5.1/?.lua;/opt/homebrew/share/lua/5.1/?/init.lua;$HOME/.luarocks/share/lua/5.1/?.lua;$HOME/.luarocks/share/lua/5.1/?/init.lua";
    LUA_CPATH = "./?.so;/usr/local/lib/lua/5.1/?.so;/opt/homebrew/lib/lua/5.1/?.so;/usr/local/lib/lua/5.1/loadall.so;$HOME/.luarocks/lib/lua/5.1/?.so";
  };

  home.sessionPath = [
    "/opt/homebrew/bin"
    "$HOME/.local/bin"
    "$HOME/Library/Android/sdk/emulator"
    "$HOME/Library/Android/sdk/platform-tools"
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;

    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "vi-mode"
        "web-search"
      ];
    };

    shellAliases = {
      n = "nvim";
      rm = "rm -I";
      lazyvim = "NVIM_APPNAME=lazyvim nvim";
      nvchad = "NVIM_APPNAME=nvchad nvim";
      astronvim = "NVIM_APPNAME=astronvim nvim";

      gl = "git log --oneline --graph --decorate";
      gla = "git log --oneline --graph --decorate --all";
      gs = "git status";
      ga = "git add";
      gc = "git commit";
      gb = "git branch";
      gr = "git restore";
      gd = "git diff";

      cd = "z";
    };

    initContent = ''
      fpath=("$HOME/completion_zsh" $fpath)
      PROMPT='%F{base}%n%f=>%F{blue}%~%f | '

      export NVM_DIR="$HOME/.config/nvm"
      [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
      [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

      [[ -f "$HOME/.deno/env" ]] && source "$HOME/.deno/env"
      [[ -f "$HOME/.local/bin/env" ]] && source "$HOME/.local/bin/env"
    '';

    profileExtra = ''
      "${../bunnyfetch}"
    '';
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.pyenv = {
    enable = true;
    enableZshIntegration = true;
    rootDirectory = "${config.home.homeDirectory}/.pyenv";
  };
}
