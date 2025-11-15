{ pkgs, ... }:  {
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
    file
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
    bind
    nmap
    tcpdump
    
    # Archive tools
    p7zip
    
    # Development tools
    gcc
    gnumake
    pkg-config
    
    # Shell utilities
    bash
    
    # File managers
    ranger
  ];
}
