{ config, pkgs, ... }:
let
    userNames = builtins.filter (u: u != "root")
    (builtins.attrNames config.users.users);    
in {
    imports = [
        ./hardware-configuration.nix
        ../../common/boot.nix
        ../../common/network.nix
        ../../common/users.nix
        ../../common/packages.nix
    ];

    networking.hostName = "kishori-ju"; 
    environment.systemPackages = with pkgs; [];

    home-manager.users = builtins.listToAttrs (map 
    (u: {
        name = u;
        value = import ./home.nix;
    })
    userNames);
    
    system.stateVersion = "25.05";
}