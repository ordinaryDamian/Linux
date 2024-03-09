#! /bin/sh
# Sources:
# https://github.com/K4rlosReyes/arch-bspwm

echo Did you set up pacman ?


sudo pacman -Syyu --noconfirm

sudo pacman -S xorg-server xorg-apps xf86-video-vmware --noconfirm
sudo pacman -S mesa xdg-user-dirs xorg-xinit git flameshot mpv arandr ark brightnessctl ntfs-3g obsidian openssh openssl pulseaudio pulseaudio-alsa pulseaudio-bluetooth unzip  yt-dlp ripgrep fd npm noto-fonts-emoji --noconfirm

sudo systemctl enable NetworkManager
sudo systemctl enable bluetooth

sudo pacman -S nemo reflector btop cmatrix man tldr cowsay --noconfirm

#sudo pacman -S tty-clock 
#sudo pacman -S xsetroot 
#sudo pacman -S xrandr 
sudo pacman -S curl zip unzip mlocate thunderbird network-manager-applet eza wget tilix --noconfirm

# https://github.com/adi1090x/rofi
sudo pacman -S rofi --noconfirm
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh

sudo pacman -S fastfetch --noconfirm
sudo pacman -S starship --noconfirm

sudo pacman -S dunst net-tools flameshot picom tldr trash-cli unzip lxappearance tar plymouth wezterm plymouth-x11 kate --noconfirm

yay -S themechanger-git --noconfirm

# https://aur.archlinux.org/packages/polybar-scripts-git

sudo pacman -S ly --noconfirm
sudo systemctl enable ly.service

sudo pacman -S feh dmenu kate polybar bspwm sxhkd wezterm xorg-xman hwinfo firefox python cantarell-fonts neovim mpv --noconfirm

sudo pacman -S ttf-roboto ttf-firacode-nerd --noconfirm
yay -S nerd-fonts-jetbrains-mono --noconfirm
sudo pacman -S qt5ct --noconfirm

echo And modify the file /etc/environment as sudo an add the following line: QT_QPA_PLATFORMTHEME=qt5ct

sudo updatedb

xdg-users-dirs-update


mkdir -p $HOME/.config/{bspwm,sxhkd,dunst,polybar,picom}
