{
  pkgs,
  inputs,
  config,
  ...
}: let
  projectRoot = "${config.home.homeDirectory}/dev/os-config";
in {
  home.packages = with pkgs; [];

  home.stateVersion = "25.05";
  programs = {
    direnv = {
      enable = true;
      nix-direnv.enable = true;
      silent = true;
      config = {
        hide_env_diff = true;
        log_format = "";
        global.load_dotenv = true;
      };
    };

    ssh = {
      enable = true;
      enableDefaultConfig = false;
      matchBlocks."*" = {
        forwardAgent = false;
        addKeysToAgent = "yes";
        compression = false;
        serverAliveInterval = 0;
        serverAliveCountMax = 3;
        hashKnownHosts = false;
        userKnownHostsFile = "~/.ssh/known_hosts";
        controlMaster = "no";
        controlPath = "~/.ssh/master-%r@%n:%p";
        controlPersist = "no";
      };
    };

    home-manager.enable = true;
  };
}