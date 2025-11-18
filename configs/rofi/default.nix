{ pkgs, ... }: {
  programs.rofi = {
    enable = true;
    theme = ./theme.rasi;
    configPath = ./config.rasi;
  };
}

