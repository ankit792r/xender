{ config, pkgs, ... }: {
  security.polkit.enable = true;
  virtualisation.docker.enable = true;
  virtualisation.docker.rootless = {
      enable = true;
      setSocketVariable = true;
  };
}
