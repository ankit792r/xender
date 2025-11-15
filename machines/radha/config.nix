{ config, pkgs, ... }: {
    imports = [
        ./hardware-configuration.nix
        ../../common/boot.nix
        ../../common/network.nix
    ];

    networking.hostName = "kishori-ju"; 
    environment.systemPackages = with pkgs; [];

    home-manager.users.krishna = import ./home.nix;
    
    system.stateVersion = "25.05";
}