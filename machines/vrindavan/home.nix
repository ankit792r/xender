{ pkgs, inputs, ... }: {

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
