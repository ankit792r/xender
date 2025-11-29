{ config, pkgs, ... }:  {
  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      auto-optimise-store = true;
    };
    
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 10d";
    };

    package = pkgs.nix;
  };

  system.stateVersion = "25.05";
}