{ pkgs, ... }:  {
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    gcc
    cmake
    which
    tree
    wget
    curl
    git

    vim
    fzf
    ripgrep
    ranger
    lazygit
    htop
    iputils

    usbutils
    pciutils
    lshw
    drm_info
  ];
}
