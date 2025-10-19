{ config, pkgs, ... }:

{
  gtk = {
    enable = true;
    theme.name = "Adwaita-dark";

    colorScheme = "dark";
  };
  qt = {
    style.name = "adwaita-dark";
  };
  home.pointerCursor = {
    enable = true;
    gtk.enable = true;
    package = pkgs.catppuccin-cursors.mochaSapphire;
      name = "catppuccin-mocha-sapphire-cursors";
    size = 12;
  };

  programs = {
    git = {
      enable = true;
      userName = "stuart-russell";
      userEmail = "stuart.russell@protonmail.com";
      extraConfig = {
        init.defaultBranch = "main";
        pull.rebase = true;
        color.ui = "auto";
      };
    };
  };

  home.packages = with pkgs; [
    vscode
  ];

}
