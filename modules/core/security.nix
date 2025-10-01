{ ... }:
{
  security.sudo.enable = true;
  systemd.user.services.niri-flake-polkit.enable = false;
}