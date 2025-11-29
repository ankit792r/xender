{ pkgs, ... }:  {
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    which
    tree
    wget
    curl
    git  
    gcc
  
    rustc
    cargo
    rustfmt
    clippy
    rust-analyzer

    nodejs

    vim
    neovim
    tmux
    fzf
    ripgrep
    ranger
    lazygit
    htop
    fastfetch
    iputils
    mpv
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
