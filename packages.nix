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
 ];
 programs.steam.enable = true;
}
