#!/bin/bash

# Update the package database and install the necessary packages
sudo pacman -Syu --noconfirm

# Install Apps #

sudo pacman -S rofi alacritty kitty neovim ranger geany fish picom polkit-gnome polkit libx11 libxft xorg-server xorg-xinit xorg-xsetroot gd

# Append necessary lines to configuration files (Adding qt5ct and qt6ct in environment)
echo "DNS=2606:4700:4700::1111 2606:4700:4700::1001" | sudo tee -a /etc/systemd/resolved.conf
echo "QT_QPA_PLATFORMTHEME=qt6ct" | sudo tee -a /etc/environment
echo "QT_QPA_PLATFORMTHEME=qt5ct" | sudo tee -a /etc/environment
echo "export QT_SCALE_FACTOR=1.25" | sudo tee -a /etc/environment
echo "PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin/:/home/prateek/.config/phyos/statusbar" | sudo tee -a /etc/environment

# Touchpad tap to click
sudo tee /etc/X11/xorg.conf.d/40-libinput.conf >/dev/null <<EOL
Section "InputClass"
    Identifier "libinput touchpad catchall"
    MatchIsTouchpad "on"
    MatchDevicePath "/dev/input/event*"
    Option "Tapping" "on"
    Option "TappingButtonMap" "lrm"
    Option "ClickMethod" "clickfinger"
EndSection
EOL

# Changing shell to fish
chsh -s $(which fish)
