#!/bin/sh

sudo pacman -S \
 sway swaybg pipewire pipewire-alsa pipewire-jack pipewire-pulse \
 wireplumber git pavucontrol pamixer brightnessctl ddcutil rofi  \
 slurp wl-clipboard xdg-desktop-portal xdg-desktop-portal-wlr    \
 terminus-font yad grim lxqt-policykit jq

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

echo '[ "$(tty)" = "/dev/tty1" ] && ~/.config/sway/sway-run.sh' >> ~/.zprofile

echo "The entire OS was sucessfully complety setup."
echo "bye."
