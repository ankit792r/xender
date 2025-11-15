
set -e  # Exit immediately if a command exits with a non-zero status

echo "this script install nixos in vm only"
echo ""
echo "run this script in root"

echo "making partitions"

parted /dev/sda -- mklabel gpt

parted /dev/sda -- mkpart root ext4 512MB -8GB

parted /dev/sda -- mkpart swap linux-swap -8GB 100%

parted /dev/sda -- mkpart ESP fat32 1MB 512MB

parted /dev/sda -- set 3 esp on

echo "formatting partitions"

mkfs.ext4 -L nixos /dev/sda1

mkswap -L swap /dev/sda2

mkfs.fat -F 32 -n boot /dev/sda3

echo "installing nixos"

mount /dev/disk/by-label/nixos /mnt

mkdir -p /mnt/boot

mount -o umask=077 /dev/disk/by-label/boot /mnt/boot

swapon /dev/sda2

echo "generating nixos configs"

nixos-generate-config --root /mnt

echo "generated configs, edit then and run nixos-install"