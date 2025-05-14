{ config, pkgs, lib, ... }:

let
  cleanupScript = pkgs.writeShellScript "cleanup-old-generations" ''
    #!/bin/sh
    set -euo pipefail

    # Remove system generations older than 3 days
    echo "Cleaning system generations older than 3 days..."
    nix-env --delete-generations +3d

    # Remove unused GC roots, which will include the old boot entries
    echo "Running nix-collect-garbage..."
    nix-collect-garbage -d
  '';
in {
  systemd = {
    services.cleanup-old-generations = {
      description = "Delete Nix generations older than 3 days and clean bootloader";
      serviceConfig = {
        Type = "oneshot";
        ExecStart = cleanupScript;
      };
    };

    timers.cleanup-old-generations = {
      wantedBy = [ "timers.target" ];
      timerConfig = {
        OnCalendar = "daily";
        Persistent = true;
      };
    };
  };
}

