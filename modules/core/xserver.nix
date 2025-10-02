{ username, ... }:
{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "gb";
    };

    # displayManager = {
    #   autoLogin = {
    #     enable = true;
    #     user = "${username}";
    #   };
    #   defaultSession = "niri";
    # };

    libinput = {
      enable = true;
    };
  };
  # To prevent getting stuck at shutdown
  systemd.settings.Manager = {
    DefaultTimeoutStopSec = "10s";
  };
}
