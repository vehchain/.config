#!/bin/sh

sudo pacman -S \
 sway swaybg pipewire pipewire-alsa pipewire-jack pipewire-pulse \
 wireplumber git pulsemixer pamixer brightnessctl ddcutil rofi  \
 slurp wl-clipboard xdg-desktop-portal xdg-desktop-portal-wlr    \
 terminus-font yad grim lxqt-policykit jq \
 mesa vulkan-icd-loader vulkan-tools vulkan-radeon \
 yazi neovim kitty noto-fonts-emoji ttf-iosevka-nerd ttf-iosevkaterm-nerd \
 clang openssh

 #pipewire-openrc wireplumber-openrc pipewire-pulse-openrc \
 #lib32-mesa lib32-vulkan-icd-loader lib32-vulkan-radeon \

# rc-update add pipewire default --user
# rc-update add wireplumber default --user
# rc-update add pipewire-pulse default --user
#
# rc-service pipewire start --user
# rc-service wireplumber start --user
#
#rc-service pipewire-pulse start --user

systemctl --user enable pipewire
systemctl --user start pipewire

systemctl --user enable pipewire-pulse
systemctl --user start pipewire-pulse

systemctl --user enable wireplumber
systemctl --user start wireplumber

systemctl --user start xdg-desktop-portal
systemctl --user start xdg-desktop-portal-wlr.service

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
