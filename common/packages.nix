{ pkgs, ... }:  {
  programs.firefox.enable = true;
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
    rsync
    pavucontrol
    blueman
    
    # Text editors
    vim
    
    # System monitoring
    htop
    
    # Network tools
    iputils
    
    # Archive tools
    p7zip
    
    # Development tools
    gcc
    gnumake
    pkg-config
       
    # File and media managers
    ranger
    mpv
    vlc
    zathura
    
  ];
}
