{ config, pkgs, inputs, ... }:

{
  services.displayManager = {
    sddm = { 
      enable = true;
      wayland.enable = true;
    };
    sessionPackages = [
      (inputs.niri.packages.${pkgs.system}.default or pkgs.niri)
    ];
  };
  

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
