![Logo](/images/LogoAustral.png)

# !!!!!!!!!!!! NEW PRODUCT - THIS WIKI IS IN REDACTION !!!!!!!!!!!!!!!!!!


# 1. QUANTUM CM4 PROCESSOR
![QuantumUltima](/images/QuantumUltima.png)

The **Quantum CM4 Processor** is an industrial platform, marinized, miniaturized and low power consumtion. It integrates a powerful quad core ARM processor, many Indutrial, Marine, and Automotive field buses, Galvanic isolation, Protections, Watchdog, RTC with GNSS Time synchronisation, Wireless and a huge storage for your datalogs.

**Applications** : The Quantum OEM Processor is designed to be embedded into a third-party system in a harsh environment, like a boat, a vehicle, a drone, a machine, an outdoor gateway …
It is designed for low latency applications using remote in browser displays and suitable for a variety of use cases : Interfacing sensors and actuators, Automation systems, command control, Robotics, Guidance, Datalog, IOT, IA, Cloud, Dashboards, Asset tracking, Machine monitoring …
For the sectors of Marine, Industry, Drones, Off-Highway Vehicles, Agriculture …

**Hardware specifications and installation** : [link](https://github.com/austral-electronics/QuantumUltima/tree/main/pdf/Quantum_OEM_02_Brief.pdf)

# 2. INSTALL DEBIAN ON YOUR QUATUM CM4
The Quantum OEM Processor is preinstalled with a Debian OS. You can reinstall debian from scratch by following this procedure.
## 2.1 Get Debian 11.3 Bullyeye Headless PREEMPT-RT image for Quantum CM4
Download the image here (300MB) :
    https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2022-04-07/
## 2.2 Program the Micro SD-CARD
## 2.3 Program the EMMC
## 2.4 Configure Debian for the Quantum CM4 peripherals

    ssh quantum@192.168.100.100
The default password is : austral

launch the configuration script :

    wget https://raw.github.com/austral-electronics/QuantumCM4/main/script/configure.sh && bash configure.sh

# 3. CURRENT ISSUES
## 3.1 I can't find my IP address
by default the ip address is static and is 192.168.100.100, if you have modified and lost the IP Address :

### Use Bonjour Protocol
Install bonjour service on windows : https://support.apple.com/kb/DL999?locale=en_US

    ssh quantum@quantum.local   -> Default password=austral
    ifconfig

### Use nmap
Install nmap : https://nmap.org/download.html
Launch nmap to scan all DHCP ip addresses

    nmap -sn 192.168.100.0/24

## 3.2 I have an SSH error 'ECDSA host key for quantum.local has changed '
    ssh-keygen -R quantum.local

# 4. TEST THE PERIPHERALS    
## 4.1 Get the system configuration

Linux version :

    uname -a
    Linux quantum 5.15.32-v8+ #1538 SMP PREEMPT Thu Mar 31 19:40:39 BST 2022 aarch64 GNU/Linux

## 4.2 Change the system configuration
    sudo raspi-config
    
## 4.3 Ethernet
by default the ip address is static and is 192.168.100.100

To change IP :

    sudo nano /etc/dhcpcd.conf
    
    # Example static IP configuration:
    interface eth0
    static ip_address=192.168.100.100/24

To use DHCP :

    # Example static IP configuration:
    #interface eth0
    #static ip_address=192.168.100.100/24

## 4.4 Wifi
To get the wifi IP address:

    ipconfig
    
To get the access point status:

    iwconfig
## 4.5 Samba file server

The default samba setting share the /home/quantum/git directory for development purposes.

We recommend adding a network drive 'Q' on Windows :
>Address: \\AUSTRAL\quantum  
>Login: quantum  
>password: austral

To add or change a share directory:
 
    sudo nano /etc/samba/smb.conf
    
Add at the end of smb.conf:

    [myShare]
    path = /myDirectory
    writeable = yes
    create mask = 0700
    directory mask = 0700
    public = no 

Allow users to access share folders :

    sudo smbpasswd -a quantum    -> Default password : austral

Restart service after smb.conf modifications :

    sudo systemctl restart smbd

Service status :

    sudo systemctl status smbd.service

Stop the Samba service :

    sudo systemctl stop smbd.service

Get samba configuration :

    testparm -s
    
The default smb.conf is set for the WORKGROUP domain, to get the windows domain name :

    net config workstation

## 4.6 Serials

## 4.7 CANbus
Verify the configuration :

     ifconfig

You must see can0, can1 and vcan0

    ip -s -d link show can0
    ip -s -d link show can1

Change baudrate :

    sudo /sbin/ip link set can0 up type can bitrate 250000
    
Receive sentences test :

    candump can0
    
Transmit sentences test :

    cansend can0 7DF#0201050000000000

## 4.8 RTC
To verify the RTC chip response on I2C bus :
 
    sudo i2cdetect -y 1

You must see UU or 68 at Address 0x68

To program the RTC :

    sudo hwclock -D -r
    date
    sudo hwclock -w
    sudo hwclock -r

## 4.8 Logo backlight

To test the LED :

    # Set Led port as output
    echo "27" > /sys/class/gpio/export
    echo "out" > /sys/class/gpio/gpio27/direction

    # Led ON 
    echo "1" > /sys/class/gpio/gpio27/value

    #led OFF
    echo "0" > /sys/class/gpio/gpio27/value
    
# 5. INSTALL THE SDK ON WINDOWS
## 4.1 Visual Code
## 4.2 C/C++ Cross Compiler
## 4.3 Qt
## 4.4 Cross Debugging
## 4.5 Git
## 4.6 Templates

# 6. TUTORIALS
## 6.1. Remove Applications
Remove applications you installed with apt-get with:

    sudo apt-get –purge remove APPNAME    (replace APPNAME with the name of the app you want to remove)

To remove possible application orphans:

    sudo apt-get autoremove –purge
    
