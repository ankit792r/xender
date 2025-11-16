{ config, pkgs, ... }:

{
	time.timeZone = "Asia/Kolkata";
	i18n.defaultLocale = "en_IN";
	i18n.extraLocaleSettings = {
		LC_ADDRESS = "en_IN";
		LC_IDENTIFICATION = "en_IN";
		LC_MEASUREMENT = "en_IN";
		LC_MONETARY = "en_IN";
		LC_NAME = "en_IN";
		LC_NUMERIC = "en_IN";
		LC_PAPER = "en_IN";
		LC_TELEPHONE = "en_IN";
		LC_TIME = "en_IN";
	};

	services.pulseaudio.enable = false;
	security.rtkit.enable = true;
	services.pipewire = {
		enable = true;
		alsa.enable = true;
		pulse.enable = true;
	};
	
  environment.systemPackages = with pkgs; [
    # Screenshot tools
    grim
    slurp
    
    # Background
    swaybg
    
    # Application launcher
    fuzzel
    
    # Status bar
    waybar
    
    # Notification daemon
    mako
    
    # Image viewer
    feh
    imv
    
    # PDF viewer
    zathura
    
    # Media players
    mpv
    vlc
    
    # Browsers
    firefox
    
    # Terminal emulators
    alacritty
  ];
}
