#! /bin/sh

yay -S plymouth-theme-cuts-alt-git 
# packages needed - plymouth, plymouth-x11, plymouth-plugin-script(fedora)

# after downloading or cloning themes, copy the selected theme in plymouth theme dir
sudo cp -r cuts_alt /usr/share/plymouth/themes/

# check if theme exist in dir
sudo plymouth-set-default-theme -l

# now set the theme (angular, in this case) and rebuilt the initrd
sudo plymouth-set-default-theme -R cuts_alt

# optionally you can test theme by running the script given in repo (plymouth-x11 required)
# sudo ./showplymouth.sh 20

# https://www.debugpoint.com/install-plymouth-arch-linux/
# open the mkinitcpio.conf and add the plymouth at the end of the HOOKS parameter
# sudo mkinitcpio -p linux

# append the quiet splash under parameter GRUB_CMDLINE_LINUX_DEFAULT.
# sudo nano /etc/default/grub
# sudo grub-mkconfig -o /boot/grub/grub.cfg
# sudo systemctl enable lightdm-plymouth