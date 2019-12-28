#!/bin/sh
#
# This is a general quick fix for problems after kernel upgrade.
# It intended to fix errors like "EFI stub: ERROR: Failed to read file"
#

echo "MOUNTING..." && \
mkdir mnt && \
mount /dev/sda2 mnt && \
mount /dev/sda1 mnt/boot && \
mount /dev/sda6 mnt/home && \
swapon /dev/sda3 && \
echo "FIXING FSTAB..." && \
cp mnt/etc/fstab mnt/etc/fstab.old && \
fsgen -t PARTUUID mnt > mnt/etc/fstab && \
echo "CONNECTING..." && \
ip link set wlp2s0 up && \
wpa_supplicant -B -i wlp2s0 -c mnt/etc/wpa_supplicant/cardoso2.conf && \
dhcpcd --ipv4-only && \
echo "REINSTALLING..." && \
pacstrap mnt linux linux-headers linux-firmware mkinitcpio && \
echo "FINISHED!"
#reboot

