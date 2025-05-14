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
 ];
 programs.steam.enable = true;
 programs.firefox.enable = true;
}
