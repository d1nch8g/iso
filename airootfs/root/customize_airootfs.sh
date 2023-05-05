#!/bin/bash
xdg-icon-resource install --novendor --size 512 /usr/local/share/backgrounds/fmnx-linux.png 
sed -i 's|/usr/bin/chromium|/usr/bin/chromium --no-sandbox|g' /usr/share/applications/chromium.desktop
sed -i 's|"gnome",|"gnome-shell", "gnome-session", "gnome-terminal", "gnome-control-center", "gnome-settings-daemon",|g' /usr/lib/python3.11/site-packages/archinstall/profiles/gnome.py
sed -i 's|Arch Linux|FMNX Linux|g' /usr/lib/python3.10/site-packages/archinstall/lib/installer.py