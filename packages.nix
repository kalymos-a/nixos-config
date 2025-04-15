{ config, pkgs, ... }:
{
 environment.systemPackages = with pkgs; [
   discord
   vscode
   steam
   gparted
   neofetch
   vivaldi
   unzip
   prismlauncher
   obs-studio
   git
 ];
 programs.steam.enable = true;
}
