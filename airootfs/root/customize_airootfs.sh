#!/bin/bash
xdg-icon-resource install --novendor --size 512 /usr/local/share/backgrounds/fmnx-linux.png 
sed -i 's|"gnome",|"gnome-shell", "gnome-session", "gnome-terminal", "gnome-control-center", "gnome-settings-daemon",|g' /usr/lib/python3.11/site-packages/archinstall/profiles/gnome.py
