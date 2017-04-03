cfdisk
while [[ -z ${partition} ]]; do
  echo "Partition to install ?"
  read partition
done
mkfs.ext4 ${partition}
mount ${partition} /mnt
pacstrap /mnt base base-devel git rsync
genfstab -U -p /mnt >> /mnt/etc/fstab
grub-install /dev/sda --root-directory=/mnt
arch-chroot /mnt git clone https://github.com/clabroche/archlinux_install.git
arch-chroot /mnt sh archlinux_install/first_script.sh ${partition}
umount /mnt
