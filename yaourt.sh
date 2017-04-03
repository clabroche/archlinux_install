#!/bin/bash
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si --noconfirm
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si --noconfirm
cd ../../
sudo rm -r package-query
