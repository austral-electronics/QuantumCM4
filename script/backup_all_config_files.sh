#!/bin/bash
#sed -i 's/\r$//' *.sh
cd ~/git
#mkdir /get_config
cp /boot/config.txt ~/git/get_config/config.txt
cp /etc/dhcpcd.conf ~/git/get_config/dhcpcd.conf
cp /etc/network/interfaces ~/git/get_config/interfaces
cp /etc/samba/smb.conf ~/git/get_config/smb.conf
cp /lib/udev/hwclock-set ~/git/get_config/hwclock-set
