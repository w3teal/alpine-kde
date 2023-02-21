#!/usr/bin/env bash
apk update
apk upgrade
setup-xorg-base || true
apk add nano chromium plasma
apk add elogind polkit-elogind dbus
apk add wpa_supplicant networkmanager pulseaudio pulseaudio-alsa
echo -e "live\nlive\n" | passwd root
rc-update add dbus
rc-update add networkmanager
rc-update add wpa_supplicant
rc-update add lightdm
rc-update add udev
rc-update add elogind
