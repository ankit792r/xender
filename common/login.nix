{ config, pkgs, ... }:

{
  services.displayManager = {
    sddm = { 
      enable = true;
      wayland.enable = true;
    };
    sessionPackages = [ pkgs.niri ];
  };
  
  environment.sessionVariables = {
    XDG_SESSION_TYPE = "wayland";
    QT_QPA_PLATFORM = "wayland";
    MOZ_ENABLE_WAYLAND = "1";
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
