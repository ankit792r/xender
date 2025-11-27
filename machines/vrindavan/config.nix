{ config, pkgs, ... }: {
    imports = [
        ./hardware-configuration.nix
        ../../modules/boot.nix
        ../../modules/network.nix
        ../../modules/nix-conf.nix
        ../../modules/users.nix
        ../../modules/niri.nix
        ../../packages/common.nix
        ../../packages/office.nix
        ../../modules/services.nix
        ../../modules/desktop.nix
        ../../variables.nix
    ];

    networking.hostName = "Vrindavan";

    home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;
        users."${config.var.username}" = import ./home.nix;
    };
    
    system.stateVersion = "25.05";
}
