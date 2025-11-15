{
  description = "Krishna Ji ka niwas";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";
    in {
      nixosConfigurations.krishna = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./config.nix
        ];
      };
    };
};