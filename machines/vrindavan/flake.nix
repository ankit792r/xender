{
  description = "Vrindavan - the city of Radha and Krishna";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    home-manager = {
        url = "github:nix-community/home-manager/release-25.05";
        inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
    in {
      nixosConfigurations.vrindavan = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./config.nix
          home-manager.nixosModules.home-manager
        ];
      };
    };
}