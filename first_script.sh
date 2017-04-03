pacman -S sudo grub os-prober
useradd -g users -G wheel,storage,power -m coco
grub-mkconfig -o /boot/grub/grub.cfg
mv etc/sudoers /etc
exit
