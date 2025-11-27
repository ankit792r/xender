#!/bin/bash
# Script to generate hardware configuration for NixOS

set -e  # Exit immediately if a command exits with a non-zero status

echo "Generating hardware configuration for NixOS"

MACHINE = "$1"

if [ -z "$MACHINE" ]; then
    echo "Usage: $0 <machine>"
    exit 1
fi

sudo nixos-generate-config --show-hardware-config > machines/$MACHINE/hardware-configuration.nix

echo "Hardware configuration generated"