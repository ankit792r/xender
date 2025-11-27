{
  description = "Mathura - the city of Lord Krishna";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
  };

  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";
    in {
      nixosConfigurations.mathura = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./config.nix
        ];
      };
    };
}