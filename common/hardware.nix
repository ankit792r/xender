{ pkgs, ... }: {
    hardware.graphics.enable = true;
    hardware.graphics.extraPackages = with pkgs; [
        intel-media-driver  # Required for modern Intel GPUs (Xe iGPU and ARC)
        vpl-gpu-rt          # oneVPL (QSV) runtime
    ];

    environment.sessionVariables = {
        LIBVA_DRIVER_NAME = "iHD";
    };

    # hardware = { 
    #     opengl = {
    #         enable = true;
    #         extraPackages = with pkgs; [
    #             mesa.vulkanDrivers
    #             # nvidiaPackages.stable
    #         ];
    #     };
    #     nvidia = {
    #         modesetting.enable = true;
    #         open = true;
    #     };
    # };
}