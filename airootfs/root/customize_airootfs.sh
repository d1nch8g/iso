#!/bin/bash
xdg-icon-resource install --novendor --size 512 /usr/local/share/backgrounds/fmnx-linux.png 
sed -i 's|/usr/bin/chromium|/usr/bin/chromium --no-sandbox|g' /usr/share/applications/chromium.desktop
sed -i 's|"gnome",|"gnome-shell", "gnome-session", "gnome-terminal", "gnome-control-center", "gnome-settings-daemon", "gnome-disk-utility", "gnome-keyring", "gnome-logs", "gnome-system-monitor", "gnome-shell-extensions", "gnome-tweaks", "gnome-characters", "gnome-font-viewer", "gnome-shell-extension-dash-to-dock", "gnome-shell-extension-gtile",|g' /usr/lib/python3.10/site-packages/archinstall/profiles/gnome.py
systemctl start bluetooth.service