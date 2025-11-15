{ config, pkgs, ... }:

{
  # SDDM with Wayland + fallback X11
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

  # X11 backend (for apps that need it)
  services.xserver.enable = true;

  # Fonts (NixOS 25.05+ compatible)
  fonts = {
    enableDefaultPackages = true;
    fontconfig.enable = true;
    packages = with pkgs; [
      noto-fonts
      fira-code
    ];
  };
}
