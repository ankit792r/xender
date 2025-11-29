{ pkgs, ... }:  {
    # wallpapers = {
    #     # Main wallpaper for Stylix theming and workspace backgrounds
    #     main = ../../dotfiles/.config/backgrounds/snaky.jpg;
        
    #     # Blurred version for lock screen and overview backdrop
    #     blurred = ../../dotfiles/.config/backgrounds/blurry-snaky.jpg;
    # };
    fonts = {
        # System UI font (for SDDM, system dialogs)
        main = "Inter";
        # Terminal/code font (for terminals, waybar, fuzzel, notifications)
        mono = "JetBrainsMono Nerd Font";
        # Font size for UI elements
        size = "12";
    };

    display = {
        # Add display-specific settings here if needed
        # e.g., resolution, scaling, etc.
    };

    hardware = {
        # Add hardware-specific settings here
        # e.g., GPU type, special drivers, etc.
    };
}