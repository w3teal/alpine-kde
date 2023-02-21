#!/usr/bin/env bash
apk update
apk upgrade
setup-xorg-base || true
# kde
apk add plasma-pa plasma-desktop plasma-nm sddm systemsettings
apk add ark dolphin konsole kate gwenview okular spectacle
# apps
apk add nano chromium ca-certificates flatpak 
# flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# logind and other stuff
apk add elogind polkit-elogind dbus wpa_supplicant networkmanager pulseaudio \
    pulseaudio-alsa bluez 
echo -e "live\nlive\n" | passwd root
rc-update add dbus
rc-update add bluetooth
rc-update add networkmanager
rc-update add wpa_supplicant
rc-update add sddm
rc-update add udev
rc-update add elogind
