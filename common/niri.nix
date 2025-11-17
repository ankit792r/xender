{ config, pkgs, ... }: {
  programs.niri = {
    enable = true;
    settings = {
		
    };
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
}