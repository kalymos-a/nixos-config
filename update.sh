#!/usr/bin/env bash

set -euo pipefail

# Set the path to your NixOS config directory
CONFIG_DIR="/etc/nixos"
cd "$CONFIG_DIR"

echo "🛠️  Rebuilding NixOS configuration..."
sudo nixos-rebuild switch

echo "📂 Checking for changes in $CONFIG_DIR..."

# Check for any file changes
if [[ -n $(git status --porcelain) ]]; then
    echo "✅ Changes detected. Committing to Git..."

    git add .

    COMMIT_MSG="Update NixOS config: $(date '+%Y-%m-%d %H:%M:%S')"
    git commit -m "$COMMIT_MSG"

    echo "🚀 Pushing to GitHub..."
    git push origin main  # Change 'main' if your branch is different
else
    echo "🟢 No changes to commit."
fi
