![Screenshot 1](https://github.com/user-attachments/assets/6f24ee20-7c54-44b1-a4c3-2c093a719f63)
![Screenshot 2](https://github.com/user-attachments/assets/9980ec84-fc7e-444e-adf1-0b972fd13a3f)

- OS: macOS Sequoia
- WM: [AeroSpace](https://github.com/nikitabobko/AeroSpace)
- Bar: [SketchyBar](https://felixkratz.github.io/SketchyBar/)
- Terminal: [Kitty](https://sw.kovidgoyal.net/kitty/)
- Shell: [Zsh](https://www.zsh.org/)
- Editor: [Neovim](https://neovim.io/)
- Font: [Fira Code](https://github.com/tonsky/FiraCode)
- Colorscheme: [catppuccin mocha](https://github.com/catppuccin/catppuccin) with black bg

## Requirements

- [Lix](https://lix.systems/install/) with flakes enabled

## Configuration

Machine-specific values live in `hosts.nix`. Before the first rebuild, set
`username` for the `mac` configuration to your macOS account name. Add another
entry when managing another Mac; each entry becomes a `darwinConfigurations`
output with the same name.

The shared Home Manager configuration is exported as
`homeManagerModules.default` and can also be imported by another flake.

## nix-darwin

After installing Lix and cloning this repository, bootstrap nix-darwin with:

```sh
sudo nix run nix-darwin/nix-darwin-26.05#darwin-rebuild -- switch --flake .#mac
```

For subsequent rebuilds, run:

```sh
sudo darwin-rebuild switch --flake .#mac
```
