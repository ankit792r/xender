{ pkgs, ... }: {
  services.mako = {
    enable = true;
    systemd.enable = true;
    config = builtins.readFile ./config;
  };
}

