{ config, pkgs, ... }: {
  programs.niri.enable = true;
  services.displayManager.ly.enable = true;

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

    grim
    slurp
    pavucontrol
    blueman
  ];
}
