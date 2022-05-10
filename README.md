![Logo](/images/LogoAustral.png)

# !!!!!!!!!!!! NEW PRODUCT - THIS WIKI IS IN REDACTION !!!!!!!!!!!!!!!!!!


# 1. QUANTUM CM4 PROCESSOR
![QuantumUltima](/images/QuantumUltima.png)

*The **Quantum CM4** makes it as easy as possible to build your next smart project with the support of the largest developer community, and if needed Node-Red low code visual programming. The Quantum CM4 is a **Raspberry PI 4 software compatible**, rugged, miniaturized, low power, real-time platform with browser-based remote displays and operating in harsh environments like Marine, Industry, IoT, Drones, Off-Highway vehicles... If a high level of integration is required, the Quantum CM4 bare electronic boards can also be integrated into your system.*

The **Quantum CM4 Processor** is an industrial platform, marinized, miniaturized and low power consumtion. It integrates a powerful quad core ARM processor, many Indutrial, Marine, and Automotive field buses, Galvanic isolation, Protections, Watchdog, RTC with GNSS Time synchronisation, Wireless and a huge storage for your datalogs.

**Applications** : The Quantum OEM Processor is designed to be embedded into a third-party system in a harsh environment, like a boat, a vehicle, a drone, a machine, an outdoor gateway …
It is designed for low latency applications using remote in browser displays and suitable for a variety of use cases : Interfacing sensors and actuators, Automation systems, command control, Robotics, Guidance, Datalog, IOT, IA, Cloud, Dashboards, Asset tracking, Machine monitoring …
For the sectors of Marine, Industry, Drones, Off-Highway Vehicles, Agriculture …

**Hardware specifications and installation** : [link](https://github.com/austral-electronics/QuantumUltima/tree/main/pdf/Quantum_OEM_02_Brief.pdf)

# 2. INSTALL DEBIAN ON YOUR QUATUM CM4
The Quantum OEM Processor is preinstalled with a Debian OS. You can reinstall debian from scratch by following this procedure.
## 2.1 Ready-to-use Debian 11.3 Bullseye Headless image (coming soon)

## 2.1 Get Debian 11.3 Bullyeye Headless PREEMPT-RT image for Quantum CM4
Download the image here (300MB) :
    https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2022-04-07/
## 2.2 Program the Micro SD-CARD
* [Install the Imager, version >=1.7.2](https://downloads.raspberrypi.org/imager/)
* [Download the .xz image of Debian 11.3 "Bulleye"](https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2022-04-07/)
* Insert a Micro SD-Card in an USB3.0 Card Reader
* Launch the imager
* Choose a personalized image and select the downloaded image
* Select the SD-card
* Click on the gear icon to configure to the Advanced Options  

![Advanced Options](/images/AdvancedOptions.png)
## 2.3 Program the EMMC
## 2.4 Prepare Debian 11.3 Bullseye Headless image from scratch
**Get Debian 11.3 Bullyeye Headless PREEMPT-RT image for Quantum CM4:**

Download the image here (300MB) : https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2022-04-07/

**Program the Micro SD-CARD or EMMC:**

See above

**Configure the default image for the Quantum CM4 Platform:**

    ssh quantum@192.168.100.100
The default password is : austral

launch the configuration script :

    wget https://raw.github.com/austral-electronics/QuantumCM4/main/script/configure.sh && bash configure.sh

# 3. CURRENT ISSUES
## 3.1 I can't find my IP address
by default the ip address is static and is 192.168.100.100, if you have modified and lost the IP Address :

** Use Bonjour Protocol :**

Install bonjour service on windows : https://support.apple.com/kb/DL999?locale=en_US

    ssh quantum@quantum.local   -> Default password=austral
    ifconfig

** Use nmap :**

Install nmap : https://nmap.org/download.html
Launch nmap to scan all DHCP ip addresses

    nmap -sn 192.168.100.0/24

## 3.2 I have an SSH error 'ECDSA host key for quantum.local has changed '
    ssh-keygen -R quantum.local

# 4. TEST THE PERIPHERALS    
## 4.1 Get the system configuration

Linux :

    uname -a                -> Linux Version (quantum 5.15.32-v8+ #1538 SMP PREEMPT Thu Mar 31 19:40:39 BST 2022 aarch64 GNU/Linux)
    cat /etc/os-release     -> Debian version (PRETTY_NAME="Debian GNU/Linux 11 (bullseye)")
    cat /etc/debian_version -> Debian version (11.3)
    
Memories :

    cat /etc/fstab      -> Partitions
    df -h               -> Disk usage
    
Cores :

    htop                        -> Processors & Memory usage
    cat /proc/cpuinfo           -> Processors models
    vcgencmd measure_temp       -> Cores temperature
    vcgencmd measure_clock arm  -> Current clock speed. you can try : arm core h264 isp v3d uart pwm emmc pixel vec hdmi dpi
    vcgencmd measure_volts core -> Current Cores voltage
    cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq -> Current clock
    cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq -> Min Clock
    cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq -> Max Clock

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
## 4.4 Python
## 4.5 Cross Debugging
## 4.6 Git
## 4.7 Templates

# 6. APPLICATIONS
## 6.1. Remove Applications
Remove applications you installed with apt-get with:

    sudo apt-get –purge remove APPNAME    (replace APPNAME with the name of the app you want to remove)

To remove possible application orphans:

    sudo apt-get autoremove –purge
    
