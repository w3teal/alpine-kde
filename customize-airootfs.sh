#!/usr/bin/env bash
apk update
apk upgrade
setup-xorg-base || true
apk add nano chromium plasma flatpak ca-certificates
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
apk add elogind polkit-elogind dbus
apk add wpa_supplicant networkmanager pulseaudio pulseaudio-alsa
echo -e "live\nlive\n" | passwd root
rc-update add dbus
rc-update add networkmanager
rc-update add wpa_supplicant
rc-update add sddm
rc-update add udev
rc-update add elogind
