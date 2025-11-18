{ config, pkgs, ... }: {
  programs.niri = {
    enable = true;
    config = builtins.readFile ../configs/niri/config.kdl;
  };

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
    # Screenshot tools
    grim
    slurp
  ];
}