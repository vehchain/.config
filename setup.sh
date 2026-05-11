#!/bin/sh

sudo pacman -S \
 sway swaybg pipewire pipewire-alsa pipewire-jack pipewire-pulse \
 wireplumber git pavucontrol pamixer brightnessctl ddcutil rofi  \
 pipewire-openrc wireplumber-openrc pipewire-pulse-openrc \
 slurp wl-clipboard xdg-desktop-portal xdg-desktop-portal-wlr    \
 terminus-font yad grim lxqt-policykit jq \
 mesa vulkan-icd-loader vulkan-tools vulkan-radeon \
 lib32-mesa lib32-vulkan-icd-loader lib32-vulkan-radeon \
 yazi neovim kitty noto-fonts-emoji ttf-iosevka-nerd ttf-iosevkaterm-nerd

rc-update add pipewire default --user
rc-update add wireplumber default --user
rc-update add pipewire-pulse default --user

rc-service pipewire start --user
rc-service wireplumber start --user
rc-service pipewire-pulse start --user

sudo chmod +x ~/.config/sway/handlers/media.sh
sudo chmod +x ~/.config/sway/handlers/media-brightnessctl.sh
sudo chmod +x ~/.config/sway/handlers/metrics-battery.sh
sudo chmod +x ~/.config/sway/handlers/metrics-desktop.sh
sudo chmod +x ~/.config/sway/handlers/keyboard-switch-layout.sh
sudo chmod +x ~/.config/sway/sway-run.sh

grep -qxF '[ "$(tty)" = "/dev/tty1" ] && exec ~/.config/sway/sway-run.sh' ~/.zprofile || \
echo '[ "$(tty)" = "/dev/tty1" ] && ~/.config/sway/sway-run.sh' >> ~/.zprofile

echo "The entire OS was sucessfully complety setup."
echo "bye."
