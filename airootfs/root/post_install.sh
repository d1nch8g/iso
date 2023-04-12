echo 'Enter your username:'
read USERNAME

cp /etc/os-release /mnt/archinstall/etc/os-release
cp /etc/pacman.conf /mnt/archinstall/etc/pacman.conf
sed -i 's/timeout 3/timeout 0/g' /mnt/archinstall/boot/loader/loader.conf

cp -R /root/* /mnt/archinstall/home/$USERNAME

mkdir -p /mnt/archinstall/usr/local/share/backgrounds
cp /usr/local/share/backgrounds/wallpaper.jpg /mnt/archinstall/usr/local/share/backgrounds/wallpaper.jpg
cp /usr/local/share/backgrounds/fleu-linux.png /mnt/archinstall/usr/local/share/backgrounds/fleu-linux.png

chmod a+rwx -R /mnt/archinstall/home/$USERNAME

arch-chroot -u $USERNAME /mnt/archinstall dconf load / < /home/$USERNAME/dconf.ini
arch-chroot /mnt/archinstall pacman -R --noconfirm epiphany gnome-music gnome-console
arch-chroot /mnt/archinstall zsh 'chsh -s $(which zsh)'
