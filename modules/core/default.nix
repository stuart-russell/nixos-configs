{ ... }:
{
  imports = [
    ./bootloader.nix
    ./pipewire.nix
    ./program.nix
    ./security.nix
    ./system.nix
    ./user.nix
    ./xserver.nix
  ];
}
