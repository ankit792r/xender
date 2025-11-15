{ config, pkgs, ... }:

{
  services.greetd.enable = true;
  security.polkit.enable = true;
}
