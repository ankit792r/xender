{ config, pkgs, inputs, ... }: {
    imports = [
        ../../packages/office.nix
    ];

    programs.firefox.enable = true;
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
        vim
        tmux
    ];

    home.file = {};
    home.stateVersion = config.var.homeManagerVersion;
}