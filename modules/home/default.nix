{ ... }:
{
  imports = [
    ./ghostty.nix                     # terminal
    ./niri/niri.nix                   # window manager
    ./p10k/p10k.nix                   # powerlevel 10k
    ./packages                        # other packages
    ./rofi.nix                        # launcher
    ./ssh.nix                         # ssh config
    ./zen-browser.nix                 # browser
    ./zsh                             # shell
  ];
}
