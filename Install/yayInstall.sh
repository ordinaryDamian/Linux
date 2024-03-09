#! /bin/sh

sudo pacman -S --needed git base-devel --noconfirm
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
yay -Syu