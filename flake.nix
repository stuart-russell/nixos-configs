# /etc/nixos/flake.nix
{
  description = "flake for stuartos";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    niri.url = "github:sodiboo/niri-flake";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    zen-browser,
    niri,
    ...
    } @ inputs: {
    nixosConfigurations = {
      stuartos = nixpkgs.lib.nixosSystem {
        system = "aarch64-linux";
        specialArgs = {inherit inputs;};
        modules = [
          ./modules/configuration.nix

          # creating a home-manager module as part of my systems config
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            # settings for the user stuart
            # sets which user to configure and where Nix should find the correct files
            home-manager.users.stuart = import ./home/stuart.nix;
            home-manager.extraSpecialArgs = {
              # bring in the list of inputs into the home-manager module
              inherit inputs;
              system = "aarch64-linux";
            };
          }
        ];
      };
    };
  };
}
