#! /bin/sh

sudo pacman -Syyu

sudo pacman -S xorg-server xorg-apps xf86-video-vmware  -y

sudo pacman -S nemo reflector neofetch htop btop cmatrix -y

#sudo pacman -S tty-clock -y
#sudo pacman -S xsetroot -y
#sudo pacman -S xrandr -y
sudo pacman -S mlocate thunderbird network-manager-applet eza wget tilix -y

# https://github.com/adi1090x/rofi
sudo pacman -S rofi -y 
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh

sudo pacman -S fastfetch -y
sudo pacman -S starship -y

sudo pacman -S dunst net-tools flameshot picom tldr trash-cli unzip lxappearance tar plymouth -y

yay -S themechanger-git

# https://aur.archlinux.org/packages/polybar-scripts-git
sudo pacman -S ly -y
# sudo systemctl enable ly.service

sudo pacman -S feh dmenu kate polybar bspwm sxhkd wezterm xorg-xman hwinfo firefox python cantarell-fonts neovim -y

sudo updatedb
mkdir -p /home/$USER/.config/{bspwm,sxhkd,dunst,polybar,picom}
