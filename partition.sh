
while [[ -z ${partition} ]]; do
  echo "Partition to install"
  read partition
done
cfdisk
mkfs.ext4 ${partition}
mount ${partition} /mnt
pacstrap /mnt base base-devel
genfstab -U -p /mnt >> /mnt/etc/fstab
cp ../archlinux_install /mnt/root
arch-chroot /mnt
