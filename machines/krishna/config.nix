{ config, pkgs, ... }: {
    imports = [
        ./hardware-configuration.nix
        ../../common/boot.nix
        ../../common/network.nix
        ../../common/users.nix
    ];

    networking.hostName = "shree-hari";
    environment.systemPackages = with pkgs; [];
  
    system.stateVersion = "25.05";
}