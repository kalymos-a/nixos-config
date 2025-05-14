{ config, pkgs, ... }:

{
  services.xserver.enable = true;

  # Set the window manager to awesome
  services.xserver.windowManager.awesome.enable = true;

  # Optionally set a display manager (like LightDM or GDM)
  services.xserver.displayManager.lightdm.enable = true;

  # Set a desktop session name (optional but nice for consistency)
  services.xserver.desktopManager.session = [
    {
      name = "awesome";
      start = ''
        exec awesome
      '';
    }
  ];
}
