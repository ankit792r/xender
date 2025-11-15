{
  description = "Radha rani ka niwas";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager = {
        url = "github:nix-community/home-manager";
        inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
    in {
      nixosConfigurations.radha = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./config.nix
          home-manager.nixosModules.home-manager
        ];
      };
    };
}