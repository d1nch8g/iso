echo 'Enter your username:'
read USERNAME


MNTDIR=/mnt/archinstall


cp /etc/os-release $MNTDIR/etc/os-release
cp /etc/pacman.conf $MNTDIR/etc/pacman.conf
cp /usr/local/share/backgrounds/wallpaper.jpg $MNTDIR/usr/local/share/backgrounds/wallpaper.jpg
mv /usr/local/share/backgrounds/logo.png $MNTDIR/usr/local/share/backgrounds/logo.png

sed -i 's/timeout 3/timeout 0/g' $MNTDIR/boot/loader/loader.conf
arch-chroot $MNTDIR xdg-icon-resource install --novendor --size 512 /usr/local/share/backgrounds/logo.png
mv airootfs/etc/dconf/db/chmod a+rwx $USERDIR/.dconf.ini

local.d/00-settings $MNTDIR/etc/dconf.ini
chmod a+rwx $MNTDIR/etc/dconf.ini
arch-chroot -u $USERNAME $MNTDIR dconf load / < $MNTDIR/etc/dconf.ini

