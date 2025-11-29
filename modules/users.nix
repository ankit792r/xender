{ config, pkgs, ... }: {
    users.users."${config.var.username}" = {
        isNormalUser = true;
        description = "${config.var.name}";
        extraGroups = [ "networkmanager" "input" "wheel" "video" "audio" "tss" "docker" ];
    };
}
