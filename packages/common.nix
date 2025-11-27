{ pkgs, ... }:  {
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    which
    tree
    wget
    curl
    git
    lazygit

    gcc
    rustup
    cargo
    rustc

    docker
    docker-compose
    lazydocker

    vim
    neovim
    tmux
    fzf
    ripgrep
    ranger

    htop
    fastfetch

    iputils
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
