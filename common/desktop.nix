{ config, pkgs, ... }:

{
  # Desktop environment packages and utilities
  # Note: Core wayland packages are in niri.nix to avoid duplication
  
  environment.systemPackages = with pkgs; [
    # Desktop utilities
    xdg-utils
    xdg-desktop-portal
    xdg-desktop-portal-gtk

    # Desktop
    niri
    wayland
    wayland-protocols
    wayland-utils
    
    # Window manager utilities
    wlr-randr
    wl-clipboard
    
    # Screenshot tools
    grim
    slurp
    
    # Background
    swaybg
    
    # Application launcher
    rofi
    
    # Status bar
    waybar
    
    # Notification daemon
    mako
    
    # File manager
    nautilus
    
    # Image viewer
    feh
    imv
    
    # PDF viewer
    zathura
    
    # Media players
    mpv
    vlc
    
    # Browsers
    firefox
    
    # Terminal emulators
    alacritty
    foot
  ];

  # XDG portal integration
  xdg.portal = {
    enable = true;
    configPackages = [ pkgs.xdg-desktop-portal-gtk ];
  };
}