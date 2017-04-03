pacman -S sudo grub os-prober
useradd -g users -G wheel,storage,power -m coco
grub-mkconfig -o /boot/grub/grub.cfg
cd archlinux_install
mv etc/ /
pacman -Syu
pacman -S bash-completion networkmanager lxdm wpa_supplicant wifi-menu dialog
sudo systemctl enable dhcpcd
locale-gen
echo LANG="fr_FR.UTF-8" > /etc/locale.conf
export LANG="fr_FR.UTF-8"
echo KEYMAP=fr > /etc/vconsole.conf
echo arch-pc > /etc/hostname
exit
