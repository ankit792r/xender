{ config, pkgs, ... }: {
    users.users."${config.var.username}" = {
        isNormalUser = true;
        description = "${config.var.username}";
        extraGroups = [ "networkmanager" "input" "wheel" "video" "audio" "tss" "docker" ];
        packages = with pkgs; [
            neovim
            htop
            curl
        ];
    };
}
