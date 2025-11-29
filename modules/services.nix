{ config, pkgs, ... }: {
  services.autorandr.enable = true;
  services.pipewire = {
		enable = true;
		alsa.enable = true;
		pulse.enable = true;
	};
  
  virtualisation.docker.enable = true;
  virtualisation.docker.rootless = {
      enable = true;
      setSocketVariable = true;
  };
}
