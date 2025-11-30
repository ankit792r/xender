{ config, pkgs, inputs, var, ... }: {
    imports = [
        ./env.nix
        ../../packages/development.nix
        ../../packages/office.nix
    ];

    programs.firefox = {
        enable = true;
        profiles = {
            default = {};
        };
    };
    home.username = var.username;
    home.homeDirectory = "/home/${var.username}";
    home.stateVersion = var.homeManagerVersion;

    home.packages = with pkgs; [
        xwayland-satellite
        mako
        fuzzel
        waybar
        kitty
        ghostty
        swww
        swaybg
        swaylock
        imagemagick

        grim
        slurp
        pavucontrol
        brightnessctl
        wl-clipboard
        wf-recorder
        satty

        powertop
        acpi
        wayland-utils
    
        fastfetch
        zathura
        neovim
        tmux
    ];

    home.file = {
        ".config/niri".source = ../../configs/niri;
        ".config/fuzzel".source = ../../configs/fuzzel;
        ".config/waybar".source = ../../configs/waybar;
    };
}