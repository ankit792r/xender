{
  description = "Vrindavan - The city of Radha and Krishna";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home, stylix, ... }@inputs: {
      nixosConfigurations.vrindavan = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./config.nix
          stylix.nixosModules.stylix
          home.nixosModules.home-manager
        ];
      };
    };
}