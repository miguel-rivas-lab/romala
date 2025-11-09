#!/usr/bin/env bash
set -e

# --- CONFIGURATION ---
XKB_DIR="/usr/share/X11/xkb"
RULES_DIR="$XKB_DIR/rules"
SYMBOLS_DIR="$XKB_DIR/symbols"
LAYOUT_NAME="romala"

# --- BACKUP ONCE ---
backup_file() {
  local file="$1"
  if [ ! -f "${file}.romala.bak" ]; then
    sudo cp "$file" "${file}.romala.bak"
    echo "Backup created: ${file}.romala.bak"
  fi
}

echo "Backing up files..."
backup_file "$RULES_DIR/base.lst"
backup_file "$RULES_DIR/evdev.lst"
backup_file "$RULES_DIR/base.xml"
backup_file "$RULES_DIR/evdev.xml"

# --- INSTALL SYMBOL FILE ---
echo "Installing layout symbol..."
sudo cp "./bin/$LAYOUT_NAME" "$SYMBOLS_DIR/$LAYOUT_NAME"

# --- ADD LAYOUT TO .lst FILES IF NOT PRESENT ---
for FILE in base.lst evdev.lst; do
  if ! grep -q "$LAYOUT_NAME" "$RULES_DIR/$FILE"; then
    echo "Adding to $FILE..."
    sudo sed -i "/! layout/a\  rom             Romala" "$RULES_DIR/$FILE"
  else
    echo "$LAYOUT_NAME already exists in $FILE"
  fi
done

# --- ADD LAYOUT TO .xml FILES IF NOT PRESENT ---
for FILE in base.xml evdev.xml; do
  if ! grep -q "<name>$LAYOUT_NAME</name>" "$RULES_DIR/$FILE"; then
    echo "Adding layout block to $FILE..."
    sudo sed -i "/<layoutList>/r ./snippets/layout_snippet.xml" "$RULES_DIR/$FILE"
  else
    echo "$LAYOUT_NAME already exists in $FILE"
  fi
done

echo "✅ Romala layout installed successfully."
echo "Try it with: setxkbmap romala"

