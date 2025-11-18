{ pkgs, ... }: {
  services.swaybg = {
    enable = true;
    systemd.enable = true;
    # Wallpaper can be set via command: swaybg -i /path/to/wallpaper.jpg
    # Or configure it in your Niri config file
  };
}

