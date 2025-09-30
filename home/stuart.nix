{
  pkgs,
  system,
  inputs,
  config,
  ...
}: let
  gitIncludes = [
    {
      condition = "gitdir:~/dev/";
      path = "${config.home.homeDirectory}/.config/git/include_me";
    }
  ];
in {
  imports = [
    ./core.nix
    ./programs/vscode.nix
    ./programs/niri.nix
  ];

  home = {
    username = "stuart";
    homeDirectory = "/home/stuart";

    packages = with pkgs; [
      inputs.zen-browser.packages."${system}".default
      gcc
      vscode
      niri
    ];
  };
}