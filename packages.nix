{ config, pkgs, ... }:
{
 environment.systemPackages = with pkgs; [
   discord
   steam
   gparted
   fastfetch
   unzip
   prismlauncher
   obs-studio
   wget
   kando
   ghostty
   git
   nordic
   r2modman
   obsidian
   lua
   protonvpn-gui
   inkscape-with-extensions
   xclicker
 ];
 programs.steam.enable = true;
 programs.firefox.enable = true;
 services.flatpak.enable = true;
 # Perchance change the programs you declarably enable to their own file or smth idk
}
