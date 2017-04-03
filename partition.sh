cfdisk
while [[ -z ${partition} ]]; do
  echo "Partition to install ?"
  read partition
done
mkfs.ext4 ${partition}
mount ${partition} /mnt
pacstrap /mnt base base-devel git
genfstab -U -p /mnt >> /mnt/etc/fstab
arch-chroot /mnt git clone https://github.com/clabroche/archlinux_install.git && archlinux_install/first&reboot.sh
