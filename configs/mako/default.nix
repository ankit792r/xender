{ pkgs, ... }: {
  programs.mako = {
    enable = true;
    systemd.enable = true;
  };

  xdg.configFile."mako/config".source = ./config;
  xdg.configFile."mako/theme.css".source = ./theme.css;
}

