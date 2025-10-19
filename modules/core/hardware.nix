{ pkgs, ... }:
{
  hardware = {
    graphics.enable = true;
    nvidia = {
      modesetting.enable = true;
      open = false;
    };
  };
  services.xserver.videoDrivers = [ "nvidia" ];
}
