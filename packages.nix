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
   android-tools
   godot_4
   wget
   kando
   ghostty
   git
   nordic
   r2modman
   obsidian
   lua
 ];
 programs.steam.enable = true;
 programs.firefox.enable = true;
 services.xserver.enable = true;
 services.xserver.desktopManager.budgie.enable = true;
 services.xserver.displayManager.lightdm.enable = true;

}
