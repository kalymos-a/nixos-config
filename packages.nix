{ config, pkgs, ... }:
{
 environment.systemPackages = with pkgs; [
   discord
   vscode
   steam
   gparted
  
   vivaldi
   unzip
   prismlauncher
   obs-studio
   git
 ];
 programs.steam.enable = true;
}
