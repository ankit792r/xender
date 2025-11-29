{ config, lib, pkgs, ... }: {
    services.displayManager = {
        autoLogin.enable = false;
        sddm = {
            enable = true;
            wayland.enable = true;
            settings = {
                General = {
                    Relogin = false;
                    defaultSession = "niri.desktop";
                    EnableAvatars = false;
                };
                Theme = {
                    Font = config.theme.fonts.main;
                    FontSize = config.theme.fonts.size;
                    
                    # Clean theme settings
                    Current = "breeze";
                    CursorTheme = "Adwaita";
                    CursorSize = "24";
                };
            };
        };
    };

    services.xserver.enable = true;
    services.xserver.desktopManager.xfce.enable = lib.mkDefault false;
    services.displayManager.gdm.enable = false;
}