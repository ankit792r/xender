MACHINE=$1

## Install nixos on the machine

if [ -z "$MACHINE" ]; then
    echo "Usage: $0 <machine>"
    exit 1
fi

if [ "$MACHINE" == "gokul" ]; then
    nixos-rebuild switch --flake .#gokul
elif [ "$MACHINE" == "vrindavan" ]; then
    nixos-rebuild switch --flake .#vrindavan
elif [ "$MACHINE" == "barsana" ]; then
    nixos-rebuild switch --flake .#barsana
else
    echo "Invalid machine: $MACHINE"
    exit 1
fi

## Installing hardware configuration

if [ "$MACHINE" == "gokul" ]; then
    sudo nixos-generate-config --show-hardware-config > machines/gokul/hardware-configuration.nix
elif [ "$MACHINE" == "vrindavan" ]; then
    sudo nixos-generate-config --show-hardware-config > machines/vrindavan/hardware-configuration.nix
elif [ "$MACHINE" == "barsana" ]; then
    sudo nixos-generate-config --show-hardware-config > machines/barsana/hardware-configuration.nix
else
    echo "Invalid machine: $MACHINE"
    exit 1
fi

## Linking config files to user's config directory
TARGET_CONFIG_DIR="$HOME/.config"
SOURCE_CONFIG_DIR="configs"
mkdir -p "$TARGET_CONFIG_DIR"

echo "Linking configs"

for dir in "$SOURCE_CONFIG_DIR"/*; do
    target="$TARGET_CONFIG_DIR/$(basename "$dir")"
    ln -sf "$dir" "$target"
    echo "Linked $(basename $dir) → ~/.config/$(basename $dir)"
done

echo "Configs linked successfully"

