#!/bin/bash
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si
cd ../../
sudo rm -r package-query
