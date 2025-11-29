{ config, pkgs, inputs, ... }:  {
    imports = [
        ./hardware-configuration.nix
        ../../modules/nix-conf.nix
        ../../modules/boot.nix
        ../../modules/network.nix
        ../../modules/desktop.nix
        ../../modules/display.nix
        ../../modules/services.nix
        ../../modules/security.nix
        ../../modules/users.nix
        ../../packages/system.nix
        ../../variables.nix
    ];

    networking.hostName = "vrindavan";
    home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;
        users."${config.var.username}" = import ./home.nix;
        home-manager.extraSpecialArgs = { inherit inputs; };
    };
    system.stateVersion = config.var.nixosVersion;
}
