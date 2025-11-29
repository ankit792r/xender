{ pkgs, ... }:  {
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    which
    tree
    wget
    curl
    git  
    gcc
  
    rustc
    cargo
    rustfmt
    clippy
    rust-analyzer

    nodejs

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
