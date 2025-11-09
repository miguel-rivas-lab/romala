#!/usr/bin/env bash
set -e

RULES_DIR="/usr/share/X11/xkb/rules"
SYMBOLS_DIR="/usr/share/X11/xkb/symbols"
LAYOUT_NAME="romala"

# Restore backups if they exist
for file in base.lst evdev.lst base.xml evdev.xml; do
  if [ -f "$RULES_DIR/${file}.romala.bak" ]; then
    sudo mv "$RULES_DIR/${file}.romala.bak" "$RULES_DIR/${file}"
    echo "Restored $file from backup."
  fi
done

sudo rm -f "$SYMBOLS_DIR/$LAYOUT_NAME"

echo "🧹 Romala layout uninstalled."

