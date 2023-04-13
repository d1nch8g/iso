echo 'Enter your username:'
read USER

cp /etc/os-release /mnt/archinstall/etc/os-release
cp /etc/pacman.conf /mnt/archinstall/etc/pacman.conf

sed -i 's/timeout 3/timeout 0/g' /mnt/archinstall/boot/loader/loader.conf
sed -i 's|/usr/bin/bash|/usr/bin/zsh|g' /mnt/archinstall/etc/passwd

cp -R /root/* /mnt/archinstall/home/$USER
cp -R /root/.[^.]* /mnt/archinstall/home/$USER
chmod a+rwx -R /mnt/archinstall/home/$USER

mkdir -p /mnt/archinstall/usr/local/share/backgrounds
cp /usr/local/share/backgrounds/wallpaper.jpg /mnt/archinstall/usr/local/share/backgrounds/wallpaper.jpg
cp /usr/local/share/backgrounds/fleu-linux.png /mnt/archinstall/usr/local/share/backgrounds/fleu-linux.png

arch-chroot /mnt/archinstall pacman -R --noconfirm epiphany gnome-music gnome-console
arch-chroot -u $USER /mnt/archinstall dconf load / < /home/$USER/dconf.ini
