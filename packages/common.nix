{ pkgs, ... }:  {
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    # Core utilities
    coreutils
    findutils
    gnugrep
    gnused
    gnutar
    gzip
    bzip2
    xz
    zip
    unzip
    
    # System tools
    util-linux
    procps
    psmisc
    which
    tree
    wget
    curl
    git
    lazygit
    rsync

    # dev tools
    gcc
    rustup
    cargo
    rustc

    docker
    docker-compose
    lazydocker
    
    # Text editors
    vim
    fzf

    # System monitoring
    htop
    fastfetch
    
    # Network tools
    iputils
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
