{ config, pkgs, ... }: {

    programs.hyprland = {
        enable = true;
        withUWSM = true;
        xwayland.enable = true;
    };

    environment.systemPackages = with pkgs; [
        kitty
        waybar
        wofi
        nwg-look
        hyprpaper
        hypridle
        hyprlock
        hyprpicker
        hyprlauncher
        grim
        slurp
        pavucontrol
        blueman
        mako
    ];

    environment.sessionVariables.NIXOS_OZONE_WL = "1";    
}
