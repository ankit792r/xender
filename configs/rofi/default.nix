{ pkgs, ... }: {
  programs.rofi = {
    enable = true;
    theme = ./theme.rasi;
  };

  xdg.configFile."rofi/config.rasi".source = ./config.rasi;
}
