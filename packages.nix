{ config, pkgs, ... }:
{
 environment.systemPackages = with pkgs; [
   discord
   vscode
   steam
   gparted
   fastfetch
   vivaldi
   unzip
   prismlauncher
   obs-studio
   git
   android-tools
   godot_4
   wget
   kando
   ghostty
  
 ];
 programs.steam.enable = true;
 programs.firefox.enable = true;
 services.xserver.enable = true;
 services.displayManager.sddm.enable = true;
 services.desktopManager.plasma6.enable = true;
}
