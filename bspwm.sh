#!/bin/bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg display server installation
sudo nala install -y xorg xbacklight xbindkeys xvkbd xinput

# PACKAGE INCLUDES build-essential.
sudo nala install -y build-essential

# Microcode for Intel/AMD 
sudo nala install -y amd64-microcode
# sudo nala install -y intel-microcode 

# Network File Tools/System Events
sudo nala install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# File Manager (eg. pcmanfm,krusader,thunar,nautilus)
sudo nala install -y pcmanfm krusader file-roller nemo

# Terminal (eg. terminator,kitty,xfce4-terminal)
sudo nala install -y kitty xfce4-terminal

# Sound packages
sudo nala install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Neofetch/HTOP
sudo nala install -y neofetch htop btop cmatrix tty-clock xsetroot xrandr mlocate

# Network Manager
sudo nala install -y network-manager network-manager-gnome policykit-1-gnome 

# Installation for Appearance management
sudo nala install -y lxappearance 

# Browser Installation (eg. chromium)
sudo nala install -y firefox-esr 

# Desktop background browser/handler 
# feh --bg-fill /path/to/directory 
# sudo nala install -y nitrogen 
sudo nala install -y feh sxiv

# Fonts and icons for now
sudo nala install -y 

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
sudo nala install -y exa

# Printing and bluetooth (if needed)
# sudo nala install -y cups system-config-printer simple-scan
# sudo nala install -y bluez blueman

# sudo systemctl enable cups
# sudo systemctl enable bluetooth

# Packages needed for bspwm installation
sudo nala install -y bspwm dmenu sxhkd picom numlockx rofi dunst libnotify-bin unzip tar kate polybar xsettingsd mpd mpv ranger qutebrowser galculator
sudo nala install -y suckless-tools evince pdfarranger mkvtoolnix-gui figlet qimgv l3afpad redshift neovim
# Command line text editor -- nano preinstalled 
# sudo nala install -y micro
sudo nala purge -y vim

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

mkdir -p ~/.config/{bspwm,sxhkd,dunst}

install -Dm755 /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc

# Install Lightdm Console Display Manager
sudo nala install -y lightdm lightdm-gtk-greeter-settings
sudo systemctl enable lightdm
sudo updatedb

########################################################
# End of script for default config
#

## These two scripts will install nerdfonts and copy my configuration files into the ~/.config directory
## Configuration uses 

source ~/nerdfonts.sh

sudo nala autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"