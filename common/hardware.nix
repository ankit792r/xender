{ pkgs, ... }: {
    hardware = { 
        opengl = {
            enable = true;
            extraPackages = with pkgs; [
                mesa.vulkanDrivers
                # nvidiaPackages.stable
            ];
        };
        nvidia = {
            modesetting.enable = true;
            open = true;
        };
    };
}