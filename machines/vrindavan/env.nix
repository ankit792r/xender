{ config, lib, pkgs, ... }: {
  home.sessionVariables = {
    # Cursor theme
    XCURSOR_THEME = "vimix-cursors";
    XCURSOR_SIZE = "28";
    
    # Core environment
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "kitty";
    
    # Terminal and color support
    TERM = "xterm-256color";
    COLORTERM = "truecolor";
    
    # Wayland environment (for better app compatibility)
    NIXOS_OZONE_WL = "1";  # Enable Wayland for Electron apps
    MOZ_ENABLE_WAYLAND = "1";  # Enable Wayland for Firefox
    MOZ_WEBRENDER = "1";
    MOZ_X11_EGL = "1";
    
    # Qt configuration
    QT_QPA_PLATFORM = "wayland";
    QT_QPA_PLATFORMTHEME = "qt5ct";      # Enable Qt theming system
    QT_AUTO_SCREEN_SCALE_FACTOR = "0";   # Disable auto scaling (let Wayland handle it)
    
    # GTK configuration  
    GDK_BACKEND = "wayland";
    
    # Other Wayland apps
    SDL_VIDEODRIVER = "wayland";
    CLUTTER_BACKEND = "wayland";
    PIPEWIRE_LATENCY = "128/48000";
    
    # Development environment
    DEVELOPMENT_MODE = "1";
    
    # Node.js and npm
    NPM_CONFIG_PREFIX = "$HOME/.npm-global";
    NODE_OPTIONS = "--max-old-space-size=4096";  # Increase Node.js memory
    
    # Rust
    CARGO_HOME = "$HOME/.cargo";
    RUSTUP_HOME = "$HOME/.rustup";
    RUST_BACKTRACE = "1";  # Better error messages
    
    # Development tools
    DOCKER_BUILDKIT = "1";  # Enable BuildKit for Docker
    COMPOSE_DOCKER_CLI_BUILD = "1";  # Use BuildKit with docker-compose
    
    # Performance and caching
    XDG_CACHE_HOME = "$HOME/.cache";
    XDG_CONFIG_HOME = "$HOME/.config";
    XDG_DATA_HOME = "$HOME/.local/share";
  };
}