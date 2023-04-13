#!/bin/bash

xdg-icon-resource install --novendor --size 512 /usr/local/share/backgrounds/fleu-linux.png 
sed -i 's|/usr/bin/chromium|/usr/bin/chromium --no-sandbox|g' /usr/share/applications/chromium.desktop
