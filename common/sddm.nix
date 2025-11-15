{ config, pkgs, ... }:

{
  # Wayland login manager (greetd)
  services.greetd = {
    enable = true;

    settings = {
      default_session = {
        command = ''
          ${pkgs.cage}/bin/cage -s \
          ${pkgs.greetd.gtkgreet}/bin/gtkgreet --cmd niri
        '';
      };
    };
  };

  # Pure Wayland system (no X11 server)
  # This does NOT disable Xwayland.
  services.xserver.enable = false;

  fonts = {
    enableDefaultPackages = true;
    fontconfig.enable = true;
    packages = with pkgs; [
      noto-fonts
      fira-code
    ];
  };
}
