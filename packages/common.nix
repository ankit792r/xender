{ pkgs, ... }:  {
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    which
    tree
    wget
    curl
    git
    

    gcc
    rustup
    cargo
    rustc
    nodejs

    lazygit

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
