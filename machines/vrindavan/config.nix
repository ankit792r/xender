{ config, pkgs, ... }: {
    imports = [
        ./hardware-configuration.nix
        ../../modules/nix-conf.nix
        ../../modules/boot.nix
        ../../modules/network.nix
        ../../modules/desktop.nix
        ../../modules/services.nix

        ../../modules/niri.nix
        ../../packages/common.nix
        ../../packages/office.nix
        
        ../../variables.nix
        ../../modules/users.nix
    ];

    networking.hostName = "vrindavan";    
    system.stateVersion = "25.05";
}
