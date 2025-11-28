#! /bin/bash

set -e

echo "Linking config files to user's config directory"
TARGET_CONFIG_DIR="$HOME/.config"
SOURCE_CONFIG_DIR="configs"
mkdir -p "$TARGET_CONFIG_DIR"

for dir in "$SOURCE_CONFIG_DIR"/*; do
	target="$TARGET_CONFIG_DIR/$(basename "$dir")"
	ln -sf "$dir" "$target"
	echo "Linked $(basename $dir) → ~/.config/$(basename $dir)"
done

echo "Done"
