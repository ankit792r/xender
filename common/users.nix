{ config, pkgs, ... }: {
    users.users.ankit = {
        isNormalUser = true;
        description = "Ankit";
        extraGroups = [ "networkmanager" "input" "wheel" "video" "audio" "tss" ];
        packages = with pkgs; [
            neovim
            htop
            curl
        ];
    };
}