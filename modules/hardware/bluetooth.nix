{ config, ...}: {
    services.blueman.enable = true;
    hardware.bluetooth = {
        enable = true;
        powerOnBoot = false;  # Don't auto-power on boot (saves battery)
        settings = {
        General = {
            Enable = "Source,Sink,Media,Socket";
            Experimental = true;  # Enable experimental features
            };
        };
  };
}