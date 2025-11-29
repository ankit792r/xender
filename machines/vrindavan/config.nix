{ config, pkgs, inputs, ... }:  {
    imports = [
        ./stylix.nix
        ./hardware-configuration.nix
        ../../modules/nix-conf.nix
        ../../modules/boot.nix
        ../../modules/network.nix
        ../../modules/desktop.nix
        ../../modules/display.nix
        ../../modules/services.nix
        ../../modules/security.nix
        ../../modules/users.nix
        ../../modules/sessions/niri.nix
        ../../packages/system.nix
        ../../variables.nix
    ];

    networking.hostName = "vrindavan";
    home-manager = {
        useUserPackages = true;
        users."${config.var.username}" = import ./home.nix;
        extraSpecialArgs = { 
            inherit inputs;
            var = config.var;
        };
        sharedModules = [
            { stylix.targets.xyz.enable = false; }
        ];
    };
    system.stateVersion = config.var.nixosVersion;
}
