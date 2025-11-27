{ config, pkgs, ... }: {
  programs.niri.enable = true;
  services.xserver.displayManager.gdm.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
  };

  environment.systemPackages = with pkgs; [
    xwayland-satellite
    mako
    rofi-wayland
    waybar
    alacritty
    swaybg
    swaylock
    
    
    # Screenshot tools
    grim
    slurp
    pavucontrol
    blueman
  ];
}
