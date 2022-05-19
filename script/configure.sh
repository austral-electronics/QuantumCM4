#!/bin/bash
RED='\033[0;31m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
NC='\033[0m'
printf "${YELLOW}=====================================\nQuantum Debian bulleyes customization${NC}\n"
printf "${RED}Warning CRLF error after editing a script? -> bash clean_scripts.sh${NC}\n"

printf "${YELLOW}=====================================\nUpgrade Debian${NC}\n"
sed -i 's/\r$//' myscript.sh
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
#sudo rpi-update
printf "${CYAN}firmware update ? press 'y' ${NC}" && read -p "" rpiUpdate
if [[ $rpiUpdate == "y" ]]; then
  printf "${YELLOW}=====================================\nrpi-update${NC}\n"
  sudo rpi-update
fi

printf "${YELLOW}=====================================\nInstall Samba share${NC}\n"
printf "${YELLOW}From /home/quantum/git to \\AUSTRA\quantum - login: quantum, password: austral ${NC}\n"
mkdir -p /home/quantum/git
sudo chmod 777 /home/quantum/git
sudo apt-get install -y samba samba-common-bin
#sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.bak
#sudo nano /etc/samba/smb.conf
pass=austral
(echo "$pass"; echo "$pass") | sudo smbpasswd -s -a quantum
#sudo smbpasswd -a quantum
sudo systemctl restart smbd

printf "${YELLOW}=====================================\nInstall Watchdog${NC}\n"
sudo apt install -y watchdog

printf "${YELLOW}=====================================\nInstall CANbus Tools${NC}\n"
sudo apt install -y can-utils

printf "${YELLOW}=====================================\nInstall I2C Tools${NC}\n"
sudo apt-get install -y i2c-tools

printf "${YELLOW}=====================================\nConfigure RTC${NC}\n"
sudo apt-get -y remove fake-hwclock
sudo update-rc.d -f fake-hwclock remove
sudo systemctl disable fake-hwclock
sudo cp /lib/udev/hwclock-set /lib/udev/hwclock-set.bak
#sudo nano /lib/udev/hwclock-set
sudo hwclock -D -r
date
sudo hwclock -w
sudo hwclock -r

printf "${CYAN}Install QT5 ? press 'y' ${NC}" && read -p "" installQT5
if [[ $installQT5 == "y" ]]; then
  printf "${YELLOW}=====================================\nInstall Qt5${NC}\n"
  sudo apt install -y qt5-qmake build-essential
  #sudo apt install -y qt5-default
fi

printf "${CYAN}Install Python3 ? press 'y' ${NC}" && read -p "" installPython3
if [[ $installPython3 == "y" ]]; then
  printf "${YELLOW}=====================================\nInstall PyThon3${NC}\n"
  sudo apt-get install -y python3-pip
  sudo apt-get install -y python3-pil
  sudo apt-get install -y python3-numpy
  sudo pip3 install RPi.GPIO
  sudo pip3 install spidev 
  sudo pip3 install python-can
fi

printf "${YELLOW}=====================================\nEnd of debian customization${NC}\n"
printf "${CYAN}reboot now ? press 'y' ${NC}" && read -p "" Reboot
if [[ $Reboot == "y" ]]; then
  printf "${YELLOW}=====================================\nReboot${NC}\n"
  sudo reboot
fi

#cat file2 >> file1