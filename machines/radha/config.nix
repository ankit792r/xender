{ config, pkgs, ... }: {
    imports = [
        ./hardware-configuration.nix
        ../../common/boot.nix
        ../../common/network.nix
        ../../common/nix-conf.nix
        ../../common/users.nix
        ../../common/login.nix
        ../../common/packages.nix
        ../../common/services.nix
        ../../common/desktop.nix
    ];

    networking.hostName = "kishori-ju";

    home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;
        users.ankit = import ./home.nix;
    };
    
    system.stateVersion = "25.05";
}