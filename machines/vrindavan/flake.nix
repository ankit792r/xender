{
  description = "Vrindavan - The city of Radha and Krishna";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home, ... }@inputs: {
    nixosConfigurations.vrindavan = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        ./config.nix
        home.nixosModules.home-manager
      ];
    };
  };
}