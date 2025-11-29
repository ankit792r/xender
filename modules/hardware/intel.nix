{ pkgs, config, ...}: {
    hardware.graphics = {
        enable = true;
        enable32Bit = true;  # For 32-bit applications and games
        
        # Mesa drivers for Intel/AMD/Nouveau graphics
        extraPackages = with pkgs; [
        mesa
        # Intel hardware video acceleration
        intel-media-driver
        intel-vaapi-driver
        # VDPAU support
        libvdpau-va-gl
        ];
        
        # 32-bit driver support
        extraPackages32 = with pkgs.pkgsi686Linux; [
            mesa
            intel-media-driver
            intel-vaapi-driver
        ];
  };
}