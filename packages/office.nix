{ pkgs, ... }:  {
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnsupportedSystem = true;

  environment.systemPackages = with pkgs; [
    docker
    docker-compose
    lazydocker
    teams-for-linux
  ];
}
