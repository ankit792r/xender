MACHINE=$1

echo "Install nixos on the machine"

if [ -z "$MACHINE" ]; then
    echo "Usage: $0 <machine>"
    exit 1
fi

nixos-rebuild switch --flake .#$MACHINE

echo "Generating hardware configuration"
sudo nixos-generate-config --show-hardware-config > machines/{gokul,vrindavan,barsana}/hardware-configuration.nix

echo "Linking config files to user's config directory"
TARGET_CONFIG_DIR="$HOME/.config"
SOURCE_CONFIG_DIR="configs"
mkdir -p "$TARGET_CONFIG_DIR"

for dir in "$SOURCE_CONFIG_DIR"/*; do
    target="$TARGET_CONFIG_DIR/$(basename "$dir")"
    ln -sf "$dir" "$target"
    echo "Linked $(basename $dir) → ~/.config/$(basename $dir)"
done


echo "Linking RC files to user's home directory"
SOURCE_RC_DIR="rc"
TARGET_RC_DIR="$HOME"

for file in "$SOURCE_RC_DIR"/*; do
    target="$TARGET_RC_DIR/$(basename "$file")"
    ln -sf "$file" "$target"
    echo "Linked $(basename $file) → $HOME/$(basename $file)"
done

echo "Done"
