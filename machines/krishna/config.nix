{ config, pkgs, ... }: {
    imports = [
        ./hardware-configuration.nix
        ../../common/boot.nix
        ../../common/nix-conf.nix
        ../../common/network.nix
        ../../common/users.nix
        ../../common/packages.nix
    ];

    networking.hostName = "shree-hari";
  
    system.stateVersion = "25.05";
}