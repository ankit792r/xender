{ config, pkgs, ... }: {
  programs.niri.enable = true;

  #services.greetd = {
  #  enable = true;
  #  settings.default_session = {
  #    command = "${pkgs.niri}/bin/niri-session";
  #    user = "ankit";
  #  };
  #};
  
  services.xserver.displayManager.gdm.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
  };

  environment.systemPackages = with pkgs; [
    xwayland-satellite
    mako
    fuzzel
    waybar
    alacritty
    
    
    # Screenshot tools
    grim
    slurp
    pavucontrol
    blueman
  ];
}
