echo 'Enter your username:'
read USERNAME

cp /etc/os-release $MNTDIR/etc/os-release
cp /etc/pacman.conf $MNTDIR/etc/pacman.conf
sed -i 's/timeout 3/timeout 0/g' $MNTDIR/boot/loader/loader.conf

cp -R /root /mnt/archinstall/home/$USERNAME

mkdir -p $MNTDIR/usr/local/share/backgrounds
cp /usr/local/share/backgrounds/wallpaper.jpg $MNTDIR/usr/local/share/backgrounds/wallpaper.jpg
cp /usr/local/share/backgrounds/logo.png $MNTDIR/usr/local/share/backgrounds/logo.png

arch-chroot $MNTDIR xdg-icon-resource install --novendor --size 512 /usr/local/share/backgrounds/logo.png


arch-chroot -u $USERNAME $MNTDIR dconf load / < $MNTDIR/etc/dconf.ini

