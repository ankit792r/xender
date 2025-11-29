{
  description = "Vrindavan - The city of Radha and Krishna";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    stylix.url = "github:nix-community/stylix";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, stylix, ... }@inputs: {
    nixosConfigurations.vrindavan = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        ./config.nix
        stylix.nixosModules.stylix
        home-manager.nixosModules.home-manager
        {
          home-manager.useUserPackages = true;
          home-manager.extraSpecialArgs = {
            inherit inputs;
          };
        }
      ];
    };
  };
}