{ config, pkgs, ... }:

{
  # SDDM with Wayland + fallback X11
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    theme = "maldives";

    settings = {
      Theme = {
        CursorTheme = "Adwaita";
        Font = "Noto Sans, 10";
      };
      General = {
        Numlock = "on";
      };
    };
  };

  # X11 backend (for apps that need it)
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us";
      options = "caps:escape";
    };
    libinput = {
      enable = true;
      touchpad = {
        naturalScrolling = true;
        tapping = true;
      };
    };
  };

  # Fonts (NixOS 25.05+ compatible)
  fonts = {
    enableDefaultPackages = true;
    fontconfig.enable = true;
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk
      font-awesome
      fira-code
    ];
  };
}
