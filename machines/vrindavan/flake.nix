{
  description = "Vrindavan - The city of Radha and Krishna";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
  };

  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";
    in {
      nixosConfigurations.vrindavan = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ ./config.nix ];
      };
    };
}