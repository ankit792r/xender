{ pkgs, inputs, ... }: {
    home.packages = with pkgs; [
        tmux
        neovim
    ];
}