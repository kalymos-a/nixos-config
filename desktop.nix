{ config, pkgs, ... }:
{
    services.xserver.enable = true;
    services.xserver.desktopManager.budgie.enable = true;
    services.xserver.displayManager.lightdm.enable = true;
    # Add more shit here when we use home manager Bruh
}