{ config, pkgs, ... }: {
  programs.niri.enable = true;

  services.greetd = {
    enable = true;
    settings.default_session = {
      command = "${pkgs.niri}/bin/niri-session";
      user = "ankit";
    };
  };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
  };

  services.libinput.enable = true;

  environment.systemPackages = with pkgs; [
    xwayland-satellite
    # Screenshot tools
    grim
    slurp
    pavucontrol
    blueman
  ];
}