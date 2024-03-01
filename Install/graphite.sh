#! /bin/sh

sudo pacman -S gnome-themes-extra --noconfirm
sudo pacman -S gtk-engine-murrine --noconfirm
sudo pacman -S sassc --noconfirm

git clone https://github.com/vinceliuice/Tela-circle-icon-theme
cd Tela-circle-icon-theme
./install.sh

cd ..

git clone https://github.com/vinceliuice/Graphite-gtk-theme
cd Graphite-gtk-theme/
./install.sh

cd ..

git clone https://github.com/vinceliuice/Graphite-cursors
cd Graphite-cursors
./install.sh