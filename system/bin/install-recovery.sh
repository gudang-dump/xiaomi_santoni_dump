#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:31421774:dcada207153fa7edcc985a25831d9cfc1f2b427d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:29341002:389ead98bb4af90b26a94bc3472aceba3eb861a8 EMMC:/dev/block/bootdevice/by-name/recovery dcada207153fa7edcc985a25831d9cfc1f2b427d 31421774 389ead98bb4af90b26a94bc3472aceba3eb861a8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
