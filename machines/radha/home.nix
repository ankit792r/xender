{ pkgs, inputs, ... }: {
    imports = [
        ../../configs/waybar/default.nix
        ../../configs/swaybg/default.nix
        ../../configs/mako/default.nix
        ../../configs/rofi/default.nix
    ];
    home.stateVersion = "25.05";
    home.packages = with pkgs; [
        tmux
    ];
}