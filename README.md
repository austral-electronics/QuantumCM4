<div align="center">
    
*Intelligent Technologies for Marine, Industrial IoT and Unmanned Vehicles - [www.austral-elec.com](http://austral-eng.com/en/accueil-english-2/)*
![QuantumUltima](/images/QuantumUltima.png)
    
*Your data here, there, or anywhere*  

# Quantum CM4 - Rugged Calculator & IOT Gateway !!! NEW 2022 !!!
    
</div>

## Overview

The **Quantum CM4 makes it as easy as possible to build your next smart project** with the support of the largest developer community, and if needed [Node-Red](https://github.com/austral-electronics/wiki/wiki/Node-Red) low code visual programming. The Quantum CM4 is a **Raspberry PI 4 software compatible** and **real-time** platform with browser-based remote displays and operating in harsh environments. If a high level of integration is required, the Quantum CM4 bare electronic boards can also be integrated into your system.

The **Quantum CM4 is a waterproof industrial platform, marinized, miniaturized and very low power consumtion**. It integrates a powerful quad core ARM processor, many Indutrial, Marine, and Automotive field buses, Galvanic isolation, Protections, Watchdog, RTC with GNSS Time synchronisation, Wireless and a huge storage for your datalogs.

***Connectivity** : WIFI, Bluetooth, Ethernet (Modbus, Profinet, ETherNet/IP, MQTT, Websocket, ZMQ, UDP, TCP...), 2xCANbus (NMEA2000, J1939, CANopen...), 3xSerials (RS232, RS485, RS422, MODBUS, NMEA0183...). **Optional long range wireless** : LoRaWAN, SigFox, Zigbee, 4G/LTE, NB-IoT, Iridium SBD, [SpaceX Swarm](https://swarm.space/), [Kineis](https://www.kineis.com/en/)... (Almost all Mini PCIe expansions boards, [Contact us](http://austral-eng.com/contact/))*

***Applications** : The Quantum OEM Processor is designed to be embedded into a third-party system in a harsh environment, like a boat, a vehicle, a drone, a machine, an outdoor gateway …
It is designed for low latency applications using remote in browser displays and suitable for a variety of use cases : Interfacing sensors and actuators, Data collection, Automation systems, command control, Robotics, Guidance, Datalog, IOT, IA, Cloud, Dashboards, Asset tracking, Machine monitoring …*

***Sectors** : Marine, Industry, Drones, Robotics, Off-Highway Vehicles, Agriculture …*

## 1. Hardware

**Download a PDF Hardware specifications and installation** : [Here](https://github.com/austral-electronics/QuantumUltima/tree/main/pdf/Quantum_OEM_02_Brief.pdf)

![QuantumCM4spec](/images/QuantumCM4specLR.png)

## 2. Operating system
Quantum CM4 is a headless product, it is designed to have its man-machine interface distributed on all types of web browsers, marine MFD displays and industrial touch panels. If you don't have real time constraints, you can of course install a linux, android or windows desktop distribution and develop via VNC but this is not the main purpose of this calculator.  
We recommend the use of a Debian distribution if your system is not deployed in large quantities and you do not have a Linux specialist in your team. In the other cases, [Austral Electronics](http://austral-eng.com/en/accueil-english-2/) in partnership with [Linatsea](https://www.linatsea.fr/) can accompany you in the creation of a distribution adapted to your need:  Buildroot, Yocto, [Redpesk](https://redpesk.bzh/welcome/home), Automotive Grade Linux (AGL), Ubuntu Server, Over-the-air (OTA) update : [Contact us](http://austral-eng.com/contact/)

## 3. Install Debian
The Quantum OEM Processor is preinstalled with a Debian OS. You can reinstall debian from scratch by following this procedure.  
Debian Long Term Support (LTS) is a project to extend the lifetime of all Debian stable releases to (at least) 5 years.  
The choice of the version depends on the deployment date of your system.  
[Debian (future) LTS Releases, Supported by security and release teams:](https://wiki.debian.org/fr/LTS)  
* Debian 10 “Buster”      July, 2022 to June, 2024
* Debian 11 “Bullseye”    July, 2024 to June, 2026

### 3.1 Download a Debian image
* Debian 11.3 "Bullseye" Headless PREEMPT-RT, Ready-to-use (Rolling Release) : (coming soon)
* Debian 10 "Buster" Headless PREEMPT-RT, Ready-to-use (LTS) : (coming soon)
* Debian 11.3 "Bullseye" Headless PREEMPT-RT, to configure (Rolling Release) : https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2022-04-07/
* Debian 10 "Buster" Headless PREEMPT-RT, to configure (LTS) : https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2021-05-28/

### 3.2 Program the Micro SD-CARD
* [Install the Imager, version >=1.7.2](https://downloads.raspberrypi.org/imager/)
* [Download the .xz image of Debian 11.3 "Bulleye"](https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2022-04-07/)
* Insert a Micro SD-Card in an USB3.0 Card Reader
* Launch the imager
* Choose a personalized image and select the downloaded image
* Select the SD-card
* Click on the gear icon to configure to the Advanced Options  

![Advanced Options](/images/AdvancedOptions.png)
### 3.3 Program the EMMC
Coming soon
### 3.4 Create a Debian image from scratch
**Get Debian an image :**
* Debian 11.3 "Bullseye" Headless PREEMPT-RT, to configure (Rolling Release) : https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2022-04-07/
* Debian 10 "Buster" Headless PREEMPT-RT, to configure (LTS) : https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2021-05-28/

**Program the Micro SD-CARD or EMMC:**

See above

**Configure the default image for the Quantum CM4 Platform:**

    ssh quantum@192.168.100.100
The default password is : austral

launch the configuration script :

    wget https://raw.github.com/austral-electronics/QuantumCM4/main/script/configure.sh && bash configure.sh

Operations realized by the script :  
* Update and upgrade Debian
* Configure Ethernet & Wifi
* Install peripherals libraries and configure them (I2C, SPI, RTC, CANbus, Serials, GPIO...)
* Install and configure Samba
* Configure Avahi (Bonjour/Zeroconf) for marine MFD Displays
* On request, install and configure for real-time usual services or applications in embedded systems:
  * C/C++
  * [Qt5](https://www.qt.io/)
  * [Python3](https://www.python.org/about/)
  * [Node.JS](https://nodejs.org/en/about/) (Asynchronous event-driven JavaScript runtime)
  * [Node-Red](https://nodered.org/) (Low Code programming)
  * [InfluxDB](https://www.influxdata.com/products/influxdb-overview/) (Time Series Database)
  * [Grafana](https://grafana.com/) (Operational dashboards)
  * [Mosquitto](https://mosquitto.org/) (MQTT broker)
  * [GPSD](https://gpsd.gitlab.io/gpsd/) (GNSS Time, GNSS To the net)
  * [Signal K](https://signalk.org/) (Open marine data standard)
  * [ROS2](https://docs.ros.org/en/foxy/index.html) (Robotics)
  * NMEA2000 (Marine CanBus communication - paid Austral Electronics stack)

### 3.5 Configuration current issues
#### I can't find my IP address
By default the ip address is static and is 192.168.100.100, if you have modified and lost the IP Address :

* Use bonjour Protocol :

Install bonjour service on windows : https://support.apple.com/kb/DL999?locale=en_US

    ssh quantum@quantum.local   -> Default password=austral
    ifconfig

* Use nmap :

Install nmap : https://nmap.org/download.html
Launch nmap to scan all DHCP ip addresses

    nmap -sn 192.168.100.0/24

#### I have an SSH error 'ECDSA host key for quantum.local has changed '
    ssh-keygen -R quantum.local

## 4. TEST THE PERIPHERALS    
### 4.1 Get the system configuration

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

### 4.2 Change the system configuration
    sudo raspi-config
    
### 4.3 Ethernet
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

### 4.4 Wifi
To get the wifi IP address:

    ipconfig
    
To get the access point status:

    iwconfig
### 4.5 Samba file server

The default samba setting share the /home/quantum/git directory for development purposes.

We recommend adding a network drive 'Q' on Windows :
>Address: \\\\AUSTRAL\quantum  
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

Allow users to access share folders or change the default password:

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

### 4.6 Serials

### 4.7 CANbus
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

### 4.8 Real Time Clock
To verify the RTC chip response on I2C bus :
 
    sudo i2cdetect -y 1

You must see UU or 68 at Address 0x68

To program the RTC :

    sudo hwclock -D -r
    date
    sudo hwclock -w
    sudo hwclock -r

### 4.8 Logo backlight

To test the LED :

    # Set Led port as output
    echo "27" > /sys/class/gpio/export
    echo "out" > /sys/class/gpio/gpio27/direction

    # Led ON 
    echo "1" > /sys/class/gpio/gpio27/value

    #led OFF
    echo "0" > /sys/class/gpio/gpio27/value
<!---    
## 5. INSTALL THE SDK ON WINDOWS
### 4.1 Visual Code
### 4.2 C/C++ Cross Compiler
### 4.3 Qt
### 4.4 Python
### 4.5 Cross Debugging
### 4.6 Git
### 4.7 Templates
-->

## 6. Applications
### 6.1. Remove Applications
Remove applications you installed with apt-get with:

    sudo apt-get –purge remove APPNAME    (replace APPNAME with the name of the app you want to remove)

To remove possible application orphans:

    sudo apt-get autoremove –purge

### 6.1. Minicom
Minicom is a simple terminal usefull to scan serials

    sudo apt update -y
    sudo apt install minicom -y
    sudo minicom -D /dev/serial0

## Disclaimers
*Copyright (C) 2022 [Austral Electronics SARL](http://austral-eng.com/en/accueil-english-2/). Changes to the specifications and features in this manual may be made by Austral without prior notice. Specifications and information provided in this manual are for informational use only. Austral assumes no responsibility or liability for any errors or inaccuracies that may appear in this manual including the product & / or software. All trademarks mentioned in this manual are property of their respective owners. This product contains copyrighted software which are released under multiple open source licenses including but not limited to the GNU GPL, LGPL, and MIT BSD licenses. Such software is provided without warranty. Copies of these licenses are included in the software itself in further detail. For the latest up to date information, please visit our Github Repository at https://github.com/austral-electronics/QuantumCM4*
  
![Logo](/images/LogoAustral.png)
