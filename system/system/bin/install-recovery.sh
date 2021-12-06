#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:482d2a7af834bd1c0b2ea21d4fdc6a723e95825b; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:2100aad9fa04de950b3b91aa3d8770e8f8562936 EMMC:/dev/block/platform/bootdevice/by-name/recovery 482d2a7af834bd1c0b2ea21d4fdc6a723e95825b 33554432 2100aad9fa04de950b3b91aa3d8770e8f8562936:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
