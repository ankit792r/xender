{ pkgs, ... }:  {
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnsupportedSystem = true;

  home.packages = with pkgs; [
    cheese
    libcamera
    v4l-utils
    mpv
    vlc
    ffmpeg   

    docker
    docker-compose
    lazydocker
    teams-for-linux
  ];
}
