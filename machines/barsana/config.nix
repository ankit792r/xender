{ config, pkgs, ... }: {
    imports = [
        ./hardware-configuration.nix
        ../../common/boot.nix
        ../../common/network.nix
        ../../common/nix-conf.nix
        ../../common/users.nix
        ../../common/gnome.nix
        ../../common/packages.nix
        ../../common/services.nix
        ../../common/desktop.nix
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