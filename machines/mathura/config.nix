{ config, pkgs, ... }: {
    imports = [
        ./hardware-configuration.nix
        ../../modules/boot.nix
        ../../modules/network.nix
        ../../modules/nix-conf.nix
        ../../modules/users.nix
        ../../modules/hyprland.nix
        ../../packages/common.nix
        ../../packages/office.nix
        ../../modules/services.nix
        ../../modules/desktop.nix
        ../../variables.nix
    ];

    networking.hostName = "Mathura";
    
    system.stateVersion = "25.11";
}
