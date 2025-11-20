{ pkgs, ... }: {
  services.mako.enable = true;

  home.file.".config/mako/config".source = ./config;
  home.file.".config/mako/theme.css".source = ./theme.css;
}

