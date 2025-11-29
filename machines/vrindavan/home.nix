{ pkgs, inputs, ... }: {
    imports = [
        ../../modules/sessions/niri.nix
        ../../packages/office.nix
    ];

    home.stateVersion = config.var.homeManagerVersion;
    home.packages.firefox.enable = true;
    home.packages = with pkgs; [
        fastfetch
        zathura
        neovim
        vim
        tmux
    ];
}