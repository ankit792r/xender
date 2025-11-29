{ config, ... }: {
    hardware.ipu6.enable = true;
    hardware.ipu6.platform = "ipu6";
    hardware.enableAllFirmware = true;
}