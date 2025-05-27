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
   protonvpn-gui
   # Following are for the KDE Wallpaper Engine extention, remove these if shits fucked or smth
   kdePackages.qtwebsockets
   python313Packages.websockets
   kdePackages.qtwebchannel
   python3Full
 ];
 programs.steam.enable = true;
 programs.firefox.enable = true;
 # Perchance change the programs you declarably enable to their own file or smth idk
}
