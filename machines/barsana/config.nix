{ config, pkgs, ... }: {
    imports = [
        ./hardware-configuration.nix
        ../../modules/boot.nix
        ../../modules/network.nix
        ../../modules/nix-conf.nix
        ../../modules/users.nix
        ../../modules/gnome.nix
        ../../packages/common.nix
        ../../packages/home.nix
        ../../modules/services.nix
        ../../modules/desktop.nix
        ../../variables.nix
    ];

    networking.hostName = "Barsana";

    home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;
        users."${config.var.username}" = import ./home.nix;
    };
    
    system.stateVersion = "25.05";
}
