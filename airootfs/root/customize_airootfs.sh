#!/bin/bash
xdg-icon-resource install --novendor --size 512 /usr/local/share/backgrounds/fmnx-linux.png 
sed -i 's|/usr/bin/chromium|/usr/bin/chromium --no-sandbox|g' /usr/share/applications/chromium.desktop
sed -i 's|1|2|g' /usr/lib/python3.10/site-packages/archinstall/profiles/gnome.py
systemctl start bluetooth.service