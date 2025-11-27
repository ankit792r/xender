{ config, pkgs, ... }: {

  services.pulseaudio.enable = false;
  services.pipewire = {
		enable = true;
		alsa.enable = true;
		pulse.enable = true;
	};

  security.polkit.enable = true;
  security.rtkit.enable = true;
  
  virtualisation.docker.enable = true;
  virtualisation.docker.rootless = {
      enable = true;
      setSocketVariable = true;
  };
}
