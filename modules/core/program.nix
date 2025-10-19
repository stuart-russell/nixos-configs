{ pkgs, ... }:
{
  programs = {
    dconf.enable = true;
    zsh.enable = true;

    niri.enable = true;
    xwayland.enable = true;
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
    };
    gamemode.enable = true;
  };
}
