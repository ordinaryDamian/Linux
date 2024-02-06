yay -S plymouth-theme-NAME-git
# packages needed - plymouth, plymouth-x11, plymouth-plugin-script(fedora)

# after downloading or cloning themes, copy the selected theme in plymouth theme dir
sudo cp -r NAME /usr/share/plymouth/themes/

# check if theme exist in dir
sudo plymouth-set-default-theme -l

# now set the theme (angular, in this case) and rebuilt the initrd
sudo plymouth-set-default-theme -R NAME

# optionally you can test theme by running the script given in repo (plymouth-x11 required)
# sudo ./showplymouth.sh 20