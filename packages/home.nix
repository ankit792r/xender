{ pkgs, ... }:  {
  home.packages = with pkgs; [
    cheese
    libcamera
    v4l-utils
    
    mpv
    vlc
    ffmpeg   
  ];
}
