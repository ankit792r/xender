{ config, pkgs, ... }: {
    imports = [
        ./hardware-configuration.nix
        ../../common/boot.nix
        ../../common/network.nix
    ];

    networking.hostName = "thakur-ji"; 
    environment.systemPackages = with pkgs; [];
  
    system.stateVersion = "25.05";
}