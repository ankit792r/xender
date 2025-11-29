{ config, lib, pkgs, ... }: {
  programs.niri.enable = true;
  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
  };

  home.packages  = with pkgs; [
    xwayland-satellite
    mako
    fuzzel
    waybar
    kitty
    ghostty
    swww
    swaybg
    swaylock
    imagemagick

    grim
    slurp
    pavucontrol
    brightnessctl
    wl-clipboard
    wf-recorder
    satty

    powertop
    acpi
    wayland-utils
  ];

  home.file = {
  };
}
