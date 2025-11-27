{ config, pkgs, ... }: {
    imports = [
        ./hardware-configuration.nix
        ../../modules/boot.nix
        ../../modules/nix-conf.nix
        ../../modules/network.nix
        ../../modules/users.nix
        ../../packages/common.nix
    ];

    networking.hostName = "Gokul";
  
    system.stateVersion = "25.11";
}
