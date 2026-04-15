#!/bin/sh
set -e

sudo pacman -S \
 pipewire pipewire-alsa pipewire-jack pipewire-pulse \
 wireplumber pavucontrol pamixer brightnessctl ddcutil rofi  \
 pipewire-openrc wireplumber-openrc pipewire-pulse-openrc \
 wl-clipboard  nwg-look terminus-font yad lxqt-policykit jq \
 mesa vulkan-icd-loader vulkan-tools vulkan-radeon vulkan-intel \
 lib32-mesa lib32-vulkan-icd-loader lib32-vulkan-tools lib32-vulkan-radeon \
 lib32-vulkan-intel neovim kitty xorg xorg-xinit i3-wm i3blocks i3status 

rc-update add pipewire default --user
rc-update add wireplumber default --user
rc-update add pipewire-pulse default --user

rc-service pipewire start --user
rc-service wireplumber start --user
rc-service pipewire-pulse start --user

grep -qxF "[ \"$(tty)\" = \"/dev/tty1\" ] && startx" "$HOME/.zprofile" || \
echo "[ \"\$(tty)\" = \"/dev/tty1\" ] && startx" >> "$HOME/.zprofile"

echo "The entire OS was sucessfully complety setup."
echo "bye."
