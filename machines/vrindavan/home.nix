{ pkgs, inputs, ... }: {
    imports = [
        ../../configs/waybar/default.nix
        ../../configs/mako/default.nix
        ../../configs/rofi/default.nix
    ];

    home.file.".config/niri/config.kdl".source = ../../configs/niri/config.kdl;


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