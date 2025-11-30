{ config, pkgs, inputs, var, ... }: {
    imports = [
        ./env.nix
        ../../packages/development.nix
        ../../packages/office.nix
    ];

    programs.firefox.enable = true;
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
        ".config/kitty".source = ../../configs/kitty;
        ".config/fastfetch".source = ../../configs/fastfetch;
        ".config/lazydocker".source = ../../configs/lazydocker;
        ".config/lazygit".source = ../../configs/lazygit;
        ".config/nvim".source = ../../configs/nvim;
        ".config/starship".source = ../../configs/starship;
        ".config/swaylock".source = ../../configs/swaylock;
    };
}