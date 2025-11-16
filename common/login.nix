{ config, pkgs, ... }:

{
  services.displayManager = {
    sddm = { 
      enable = true;
      wayland.enable = true;
    };
    sessionPackages = [ pkgs.niri ];
  };

  environment.systemPackages = [
    pkgs.xwayland-satellite
  ];

  services.xserver.enable = true;

  fonts = {
    enableDefaultPackages = true;
    fontconfig.enable = true;
    packages = with pkgs; [
      noto-fonts
      fira-code
    ];
  };
}
