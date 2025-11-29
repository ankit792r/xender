{ config, pkgs, inputs, ... }: {
    imports = [
        ../../modules/sessions/niri.nix
        ../../packages/office.nix
    ];

    programs.firefox.enable = true;
    home.stateVersion = config.var.homeManagerVersion;
    home.packages = with pkgs; [
        fastfetch
        zathura
        neovim
        vim
        tmux
    ];
}