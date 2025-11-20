{ pkgs, inputs, ... }: {
    imports = [
        ../../configs/waybar/default.nix
        ../../configs/swaybg/default.nix
        ../../configs/mako/default.nix
        ../../configs/rofi/default.nix
    ];

    home.stateVersion = "25.05";
    programs.firefox.enable = true;
    home.packages = with pkgs; [
        tmux
        ranger
        mpv
        vlc
        zathura
    ];
}