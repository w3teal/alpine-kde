#!/usr/bin/env bash
apk update
apk upgrade
setup-xorg-base || true
# kde
apk add plasma-desktop systemsettings sddm breeze plasma okular
apk add ark dolphin konsole kate gwenview okular spectacle
# apps
apk add nano chromium ca-certificates flatpak 
# flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# logind and other stuff
apk add elogind polkit-elogind dbus wpa_supplicant networkmanager pulseaudio \
    pulseaudio-alsa bluez networkmanager-wifi networkmanager-tui librsvg fuse
# remove baloo_file at startup
rm -f /etc/xdg/autostart/baloo_file.desktop
echo -e "live\nlive\n" | passwd root
echo -e "live\nlive\n" | adduser user
rc-update add dbus
rc-update add bluetooth
rc-update add networkmanager
rc-update add wpa_supplicant
rc-update add sddm
rc-update add udev
rc-update add elogind
rc-update add fuse
# laptop stuff
apk add acpi cpufreqd pm-utils
rc-update add cpufreqd
cd /
apk info -L baloo | xargs rm -rvf
apk info -L discover | xargs rm -rvf
