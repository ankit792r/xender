{config, lib, ...}: {
    config = {
        var = {
            name = "Ankit Prajapati";
            username = "ankit";
            gitEmail = "77499177+ankit792r@users.noreply.github.com";
            nixosVersion = "25.05";
            homeManagerVersion = "25.05";
        };
        theme = {
            fonts = {
                main = "Inter";
                mono = "JetBrainsMono Nerd Font";
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
        };

        # wallpapers = {
        #     # Main wallpaper for Stylix theming and workspace backgrounds
        #     main = ../../dotfiles/.config/backgrounds/snaky.jpg;
            
        #     # Blurred version for lock screen and overview backdrop
        #     blurred = ../../dotfiles/.config/backgrounds/blurry-snaky.jpg;
        # };
    };

    options = {
        var = lib.mkOption {
            type = lib.types.attrs;
            default = {};
        };
        theme = lib.mkOption {
            type = lib.types.attrs;
            default = {};
        };
    };
}