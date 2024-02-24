sudo pacman -Syyu

sudo pacman -S xorg-server -y
sudo pacman -S xorg-apps -y
sudo pacman -S xf86-video-vmware -y
sudo pacman -S nemo -y
sudo pacman -S reflector -y
sudo pacman -S neofetch -y
sudo pacman -S htop -y
sudo pacman -S btop -y
sudo pacman -S cmatrix -y 
sudo pacman -S tty-clock -y
sudo pacman -S xsetroot -y
sudo pacman -S xrandr -y
sudo pacman -S mlocate -y
sudo pacman -S thunderbird -y
sudo pacman -S network-manager-applet -y
sudo pacman -S eza -y
sudo pacman -S wget -y
sudo pacman -S tilix -y

# https://github.com/adi1090x/rofi
sudo pacman -S rofi -y 
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh

sudo pacman -S fastfetch -y
sudo pacman -S starship -y
#! /bin/sh

sudo pacman -S dunst-y
sudo pacman -S net-tools -y
sudo pacman -S flameshot -y
sudo pacman -S picom -y
sudo pacman -S tldr -y
sudo pacman -S trash-cli -y
sudo pacman -S unzip -y
sudo pacman -S lxappearance -y
sudo pacman -S tar -y
sudo pacman -S plymouth -y
yay -S themechanger-git

# https://aur.archlinux.org/packages/polybar-scripts-git
sudo pacman -S ly -y
# sudo systemctl enable ly.service

sudo pacman -S feh -y
sudo pacman -S dmenu -y
sudo pacman -S kate -y
sudo pacman -S polybar -y
sudo pacman -S bspwm -y
sudo pacman -S sxhkd -y
sudo pacman -S wezterm -y
sudo pacman -S xorg-xman -y
sudo pacman -S hwinfo -y
sudo pacman -S firefox -y
sudo pacman -S python -y
sudo pacman -S cantarell-fonts -y

sudo updatedb
mkdir -p /home/$USER/.config/{bspwm,sxhkd,dunst,polybar,picom}
