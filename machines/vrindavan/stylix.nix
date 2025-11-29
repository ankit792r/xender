{ pkgs, ... }: {
    stylix = {
        enable = true;

        # Base16 color scheme - you can change this to any base16 theme
        # Popular options: "gruvbox-dark-hard", "nord", "dracula", "tokyo-night-dark", "catppuccin-mocha"
        base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";

        cursor = {
            package = pkgs.vimix-cursors;
            name = "vimix-cursors";
            size = 24;
        };

        fonts = {
            monospace = {
                package = pkgs.nerd-fonts.jetbrains-mono;
                name = "JetBrainsMono Nerd Font";
            };
            sansSerif = {
                package = pkgs.noto-fonts;
                name = "Noto Sans";
            };
            serif = {
                package = pkgs.noto-fonts;
                name = "Noto Serif";
            };
            sizes = {
                applications = 12;
                terminal = 14;
                desktop = 12;
                popups = 12;
            };
        };

        # Qt configuration for Stylix integration
        targets = {
            gtk.enable = true;
            qt.enable = true;
        };
    };
}