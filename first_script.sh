pacman -S sudo grub os-prober
useradd -g users -G wheel,storage,power -m coco
grub-mkconfig -o /boot/grub/grub.cfg
cd archlinux_install
rsync -a etc/ /etc
pacman -Syu
pacman -S bash-completion networkmanager lxdm wpa_supplicant netctl dialog net-tools
sudo systemctl enable dhcpcd
locale-gen
echo LANG="fr_FR.UTF-8" > /etc/locale.conf
export LANG="fr_FR.UTF-8"
echo KEYMAP=fr > /etc/vconsole.conf
echo arch-pc > /etc/hostname
passwd
passwd root
exit
