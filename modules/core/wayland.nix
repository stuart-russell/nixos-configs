{ inputs, pkgs, ... }:
{
  programs.niri = {
    enable = true;
  };

  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    config = {
      common.default = [ "gtk" ];
    };

    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };
}