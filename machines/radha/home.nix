{ pkgs, inputs, ... }: {
    imports = [
        ./configs/waybar/default.nix
    ];
    home.stateVersion = "25.05";
    home.packages = with pkgs; [
        tmux
    ];
}