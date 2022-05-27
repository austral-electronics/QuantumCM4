
*Intelligent Technologies for Marine, Industrial IoT and Unmanned Vehicles - [www.austral-elec.com](http://austral-eng.com/en/accueil-english-2/)*
![QuantumUltima](/images/QuantumUltima.png)
    
*Your data here, there, or anywhere*  

# Quantum CM4 OEM - Rugged Calculator & IOT Gateway !!! NEW 2022 !!!

## Overview <a name="overview"></a>

The **Quantum CM4 makes it as easy as possible to build your next smart project operating in hostile environment**.  
The Quantum CM4 is a **Real-time and Raspberry PI 4 software compatible** platform with browser-based remote displays.  
**Drastically reduce your development time** with  aready to use and proven solution, the support of the largest developer community, and if it is suitable [Node-Red](https://github.com/austral-electronics/wiki/wiki/Node-Red), a low code visual programming with a library of nearly 4000 [nodes](https://github.com/austral-electronics/wiki/wiki/Quantum-nodes-collection) in order to **connect your instruments in minutes**.
If a high level of integration is required, the Quantum CM4 bare electronic boards can also be integrated into your system.

The **Quantum CM4 is a waterproof industrial platform, marinized, miniaturized and very low power consumtion**. It integrates a powerful quad core ARM processor, many Industrial, Marine, and Automotive field buses, Galvanic isolation, Protections, Watchdog, RTC with GNSS Time synchronisation, Wireless and a huge storage for your datalogs.

***Industrial and Marine communication** : WIFI, Bluetooth, BLE, Ethernet (Modbus TCP, Profinet, ETherNet/IP, BACNET, OPC-UA, MQTT, Websocket, ZMQ, UDP, TCP...), 2xCANbus (NMEA2000, J1939, CANopen...), 3xSerials (RS232, RS485, RS422, Modbus RTU, NMEA0183...). **Optional IoT wireless** : LoRaWAN, SigFox, Zigbee, Xbee, Zwave, 4G/LTE, NB-IoT, Iridium SBD, [SpaceX Swarm](https://swarm.space/), [Kineis](https://www.kineis.com/en/)... ([Contact us](http://austral-eng.com/contact/))*

***Multilanguage API** : pre-installed C/C++/Qt, Python, NodeJS, Node-Red. Easy installation of Rust, Java, Go...*

***Applications** : The Quantum CM4 Processor is designed to be embedded into a third-party system in a harsh environment, like a boat, a vehicle, a drone, a machine, an outdoor gateway …
It is designed for low latency applications using remote in browser displays and suitable for a variety of use cases : Interfacing sensors, actuators and PLCs, Data collection, Automation systems, command control, Robotics, Guidance, Datalog, IOT, IA, Cloud, Dashboards, Asset tracking, Machine monitoring …*

***Sectors** : Marine, Industry, Drones, Robotics, Off-Highway Vehicles, Agriculture …*

## Table of contents
[Overview](#overview)
1. [Hardware](#hardware)
2. [Operating system](#os)
3. [Install Debian](#debian)  
3.1. [Download a Debian image](#download_debian)  
3.2. [Program the Micro SD-CARD](#prog_sd)  
3.3. [Program the EMMC](#prog_emmc)  
3.4. [Create your own Debian image from scratch](#debian_from_scatch)  
3.5. [Configuration current issues](#config_issues)  
4. [Test the peripherals](#peripherals)  
4.1. [Get the system configuration](#get_conf)  
4.2. [Change the system configuration](#change_conf)  
4.3. [Ethernet](#eth)  
4.4. [Wifi](#wifi)  
4.5. [Samba file server](#samba)  
4.6. [Serials](#serials)  
4.7. [CANbus](#canbus)  
4.8. [Real Time Clock](#rtc)  
4.9. [Logo backlight](#led)  
4.10. [Bluetooth](#ble)  
4.11. [Watchdog](#wd)  
4.12. [Optional PWM](#pwm)  
4.13. [Thermal Stress Test](#thermal)
5. [Applications](#applications)  
5.1. [Remove Applications](#rem_app)  
5.2. [Tools](#tools)  
5.3. [Protocols](#protocols)  
5.4. [Databases](#databases)  
6. [Others Operating Systems Links](#oos)  
7.   [Disclaimers](#disclamers)

## 1. Hardware <a name="hardware"></a>

**Download a PDF Hardware specifications and installation** : [Here](https://github.com/austral-electronics/QuantumUltima/tree/main/pdf/Quantum_OEM_02_Brief.pdf)

![QuantumCM4spec](/images/QuantumCM4specLR.png)

## 2. Operating system <a name="os"></a>
Quantum CM4 is a headless product, it is designed to have its man-machine interface distributed on all types of web browsers, marine MFD displays and industrial touch panels. If you don't have real time constraints, you can of course install a linux, android or windows desktop distribution and develop via VNC but this is not the main purpose of this calculator.  
We recommend the use of a [Debian](https://www.debian.org/index.en.html) distribution if your system is not deployed in large quantities and you do not have a Linux specialist in your team. In the other cases, [Austral Electronics](http://austral-eng.com/en/accueil-english-2/) in partnership with [Linatsea](https://www.linatsea.fr/) can accompany you in the creation of a distribution adapted to your need:  Buildroot, Yocto, [Redpesk Marine Grade Linux](https://docs.redpesk.bzh/docs/en/master/getting_started/docs/overview.html), [Automotive Grade Linux](https://www.automotivelinux.org/) (AGL), [Ubuntu Server](https://ubuntu.com/download/raspberry-pi), Over-the-air (OTA) update : [Contact us](http://austral-eng.com/contact/)

[Usefull links for others Operatings Systems](#oos)

## 3. Install Debian <a name="debian"></a>
In order to take advantage of the huge developer community on Raspberry PI, a great [documentation](https://www.raspberrypi.com/documentation/computers/os.html#introduction) and a Tier 3 support. The Quantum CM4 Processor is preinstalled with a [Debian Linux](https://www.debian.org/index.en.html) optimized by the Raspberry PI Foundation and configured for the Quantum CM4 hardware. The OS comes with over 35,000 packages: precompiled software bundled in a nice format for easy installation. You can reinstall Debian from scratch by following this procedure.  
Debian Long Term Support (LTS) is a project to extend the lifetime of all Debian stable releases to (at least) 5 years.  
The choice of the version depends on the deployment date of your system.  
[Debian (future) LTS Releases, Supported by security and release teams:](https://wiki.debian.org/fr/LTS)  
* Debian 10 “Buster”      July, 2022 to June, 2024
* Debian 11 “Bullseye”    July, 2024 to June, 2026

### 3.1. Download a Debian image <a name="download_debian"></a>
* Debian 11.3 "Bullseye" Headless PREEMPT-RT, Ready-to-use (Rolling Release) : (coming soon)
* Debian 10 "Buster" Headless PREEMPT-RT, Ready-to-use (LTS) : (coming soon)
* Debian 11.3 "Bullseye" Headless PREEMPT-RT, to configure (Rolling Release) : [here](https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2022-04-07/)
* Debian 10 "Buster" Headless PREEMPT-RT, to configure (LTS) : [here](https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2021-05-28/)

### 3.2. Program the Micro SD-CARD  <a name="prog_sd"></a>
* [Install the Imager, version >=1.7.2](https://downloads.raspberrypi.org/imager/)
* [Download the .xz image of Debian 11.3 "Bulleye"](https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2022-04-07/)
* Insert a Micro SD-Card in an USB3.0 Card Reader
* Launch the imager
* Choose a personalized image and select the downloaded image
* Select the SD-card
* Click on the gear icon to configure to the Advanced Options  

![Advanced Options](/images/AdvancedOptions.png)
### 3.3. Program the EMMC <a name="prog_emmc"></a>
If you have a Quantum version EMMC and not micro SD-card, the procedure is slightly different.  
On windows, install [rpiboot](https://github.com/raspberrypi/usbboot/raw/master/win32/rpiboot_setup.exe)  
Connect the Quantum to Windows using a USB cable connected to the USB Slave port.  
Boot the Quantum with the EMMC_BOOT switch ON.  
The EMMC appears as a disc on windows that you have to select in the imager.  
Switch back to OFF after programming.  

### 3.4. Create your own Debian image from scratch <a name="debian_from_scatch"></a>

If you are not a Linux expert, the following example is the easiest way to create and deploy your own linux distribution with your applications pre-installed. You only need to customize a configuration script and somes settings (IP, password...).

**Get Debian an image :**
* Debian 11.3 "Bullseye" Headless PREEMPT-RT, to configure (Rolling Release) : https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2022-04-07/
* Debian 10 "Buster" Headless PREEMPT-RT, to configure (LTS) : https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2021-05-28/

**Program the Micro SD-CARD or EMMC:**

See above

**Configure the default image for the Quantum CM4 Platform:**

    ssh quantum@192.168.100.100
The default password is : austral

On windows you can launch also install [putty](https://putty.org/) and create a .bat shortcut with :

    putty.exe -ssh quantum@192.168.100.100 -pw austral

Verify the internet connection of the Quantum CM4 :

    ping -q -c1 google.com &>/dev/null && echo online || echo offline

If you are 'Online', you can download and launch configuration script, otherwise verify your Ethernet or Wifi configuration :

    bash <(curl -sL https://raw.github.com/austral-electronics/QuantumCM4/main/script/configure.sh)

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

**Deployment : Shrink and backup the image:**

Read the uSD-Card with [win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/files/latest/download) and a USB-uSD Interface.
In 'Device' select the partition /boot -> G: Then 'Read'

[Shrink](https://github.com/Drewsif/PiShrink) the image (that will then resize to the max size of the SD card on boot)

Installation (Linux machine / Win10/11 WSL2 or virtual box):

    wget https://raw.githubusercontent.com/Drewsif/PiShrink/master/pishrink.sh
    chmod +x pishrink.sh
    sudo mv pishrink.sh /usr/local/bin

Usage :

    sudo pishrink.sh xxxx.img
    
You can backup / share this compressed image.

### 3.5. Configuration current issues <a name="config_issues"></a>
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

#### The configure.sh script don't work

* Verify the internet connection of the Quantum CM4:

    ping -q -c1 google.com &>/dev/null && echo online || echo offline
    
* If you modify configure.sh script with an editor you may have a CRLF problem, you can clean it with :
    
    wget https://raw.github.com/austral-electronics/QuantumCM4/main/script/clean_script.sh -O - | bash

## 4. TEST THE PERIPHERALS <a name="peripherals"></a>   
### 4.1. Get the system configuration <a name="get_conf"></a>

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
    
 Debug :
 
     dmesg                      -> View the system Log

### 4.2. Change the system configuration <a name="change_conf"></a>
    sudo raspi-config
    
[Documentation](https://www.raspberrypi.com/documentation/computers/configuration.html)
    
### 4.3. Ethernet <a name="eth"></a>
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

### 4.4. Wifi <a name="wifi"></a>
To get the wifi IP address:

    ipconfig
    
To get the access point status:

    iwconfig
### 4.5. Samba file server <a name="samba"></a>

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

### 4.6. Serials <a name="serials"></a>

Pinouts :

![Pinouts](/images/Pinouts.png)

List all the ports:

    ls -l /dev/tty*

You must see the 3 used ports:

    /dev/ttyS0
    /dev/ttyAMA1
    /dev/ttyAMA2

You can test the ports with minicom :

    sudo apt update -y
    sudo apt install minicom -y
    sudo minicom -D /dev/ttyS0
    
You can also test in bash command :

**COM2 = ttyAMA1 : RS232 port (uart3 with CTS for PPS input on GPIO6) :**

    # Configure
    stty -F /dev/ttyAMA1 speed 4800 cs8 -cstopb -parenb

    # Read
    cat /dev/ttyAMA1

    # Write
    echo -e "TX COM2 Working \x0D\x0A" > /dev/ttyAMA1

**COM3 = ttyAMA2: RS232 port (uart5) :**

    # Configure
    stty -F /dev/ttyAMA2 speed 4800 cs8 -cstopb -parenb

    # Read
    cat /dev/ttyAMA2

    # Write
    echo -e "TX COM3 Working \x0D\x0A" > /dev/ttyAMA2
    
**COM1 = ttyS0 : Multifunction port (uart1 with hardware RTS1 and a RS485/MODBUS/422 selection) :**

By default this port is configured in RS232 with RTS.  
RS485_MODE (GPIO24) is used for RS485/MODBUS/RS422 selection.  
RTS1 (GPIO17) is used for the high/low impedance control in RS485/MODBUS mode.  

!!!! Warning : If you have an isolated hardware, connect your ground wire to COM1-GND !!!!

    # Set RS485_MODE (GPIO24) ports as output
    echo "24" > /sys/class/gpio/export
    echo "out" > /sys/class/gpio/gpio24/direction
    
    # Config in RS232 mode 
    echo "0" > /sys/class/gpio/gpio24/value
    
    # Config in RS485 mode
    echo "1" > /sys/class/gpio/gpio24/value    
   
    # Configure
    stty -F /dev/ttyS0 speed 4800 cs8 -cstopb -parenb
    
    # Read
    cat /dev/ttyS0

    # Write
    echo -e "TX COM1 Working \x0D\x0A" > /dev/ttyS0

**Replace COM1 with the linux serial console :**

For debug purposes, you can activate/desactivate a debug console with 

    sudo raspi-config 

Interface Options ->  Serial Port -> Shell accessible over serial -> Yes

### 4.7. CANbus <a name="canbus"></a>
Verify the configuration :

     ifconfig

You must see can0, can1 and vcan0 peripherals, and rx/tx packets status.
Alias :
* can0 -> CAN2 Isolated - Secondary CANbus port (near Serials M12)
* can1 -> CAN1 with PowerIn - Main CANbus port (near Ethernet M12)
* vcan0 -> Virtual CANbus for development

You can also see the status with :

    ip -s -d link show can0
    ip -s -d link show can1

You can check for a hardware problem with :

    dmesg | grep -i -E "(mcp|spi)"

Must give :

    [    8.719339] mcp251x spi1.2 can0: MCP2515 successfully initialized.
    [    8.745038] mcp251x spi0.1 can1: MCP2515 successfully initialized.

Change baudrate :

    sudo /sbin/ip link set can0 up type can bitrate 250000
    
Receive sentences test :

    candump can1       -> CAN1 (PowerIn near Ethernet M12)
    candump can0       -> CAN2 (Isolated near Serials M12)
    
Transmit sentences test :

    cansend can1 7DF#0201050000000000
    cansend can0 7DF#0201050000000000
    
Pthon example : https://www.waveshare.com/wiki/2-CH_CAN_HAT#.E3.80.90Python_example.E3.80.91

### 4.8. Real Time Clock <a name="rtc"></a>
To verify the RTC chip response on I2C bus :
 
    sudo i2cdetect -y 1

You must see UU or 68 at Address 0x68

To program the RTC :

    sudo hwclock -D -r
    date
    sudo hwclock -w
    sudo hwclock -r

### 4.9. Logo backlight <a name="led"></a>

To test the LED :

    # Set Led port as output
    echo "27" > /sys/class/gpio/export
    echo "out" > /sys/class/gpio/gpio27/direction

    # Led ON 
    echo "1" > /sys/class/gpio/gpio27/value

    #led OFF
    echo "0" > /sys/class/gpio/gpio27/value
    
### 4.10. Bluetooth <a name="ble"></a>

Bluetooth allows you to connect a GNSS, a Remote control... to the Quantum CM4 or transform it to a voice assistant.  
[How to](https://howchoo.com/pi/bluetooth-raspberry-pi#setting-up-bluetooth-using-a-terminal-or-ssh-connection)

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

### 4.11. Watchdog and OverTemperature <a name="wd"></a>

Tutorial : https://medium.com/@arslion/enabling-watchdog-on-raspberry-pi-b7e574dcba6b

Settings :

    sudo nano /etc/watchdog.conf
    sudo nano /etc/default/watchdog

Start the service :

    sudo systemctl start watchdog
    
### 4.12. Optional PWM <a name="pwm"></a>

COM3-TXD (TXD5) output may be use as PWM0 (PIN 6 of the M12 connector).
With a hardware modification PWM0 can also replace PWR-OUT on the PIN5 of the M12 connector.

Contact us for more information.

### 4.13. Thermal Stress Test <a name="thermal"></a>

Stress the CPUs:

    sudo apt install stress-ng mesa-util
    stress-ng --cpu 0 --cpu-method fft

Open 3 others consoles and verify the CPUs Temperature, the current cores clocks speed (1500Mhz) and the throttle:

    watch -n 1 vcgencmd measure_temp
    watch -n 1 vcgencmd measure_clock arm
    watch -n 1 vcgencmd get_throttled

Throttle Status :

    0: under-voltage
    1: arm frequency capped
    2: currently throttled 
    16: under-voltage has occurred
    17: arm frequency capped has occurred
    18: throttling has occurred

under-voltage occurs when voltage drops below 4.63V. The Quantum is throttled
arm frequency capped occurs with temp > 80'C
over-temperature occurs with temp > 85'C. The Quantum is throttled
Throttling removes turbo mode, which reduces core voltage, and sets arm and gpu frequencies to non-turbo value.
Capping just limits the arm frequency (somewhere between 600MHz and 1200MHz) to try to avoid throttling.
If you are throttled and not under-voltage then you can assume over-temperature. (confirm with vcgencmd measure_temp).

Note : Above 82 °C (180 °F), the clock frequency is automatically lowered, regardless of which flag is set. This action will reduce heat development. Once cooled down, the clock is restored to its original frequency.

You can view the 3 informations using a bash script :

    while :
    do
      vcgencmd measure_clock arm
      vcgencmd measure_temp
      vcgencmd get_throttled
      sleep 1
      echo ''
    done

You can also lauch a python script to log a long test in a csv file :

    from gpiozero import CPUTemperature
    from time import sleep, strftime, time
    
    with open("/home/quantum/cpu_temp.csv", "a") as log:
    while True:
        cpu = CPUTemperature()
        log.write("{0},{1}\n".format(strftime("%Y-%m-%d %H:%M:%S"),str(cpu.temperature)))
        sleep(1)
    
## 5. Applications<a name="applications"></a> 
### 5.1. Remove Applications <a name="rem_app"></a>
Remove applications you installed with apt-get with:

    sudo apt-get –purge remove APPNAME    (replace APPNAME with the name of the app you want to remove)

To remove possible application orphans:

    sudo apt-get autoremove –purge

### 5.2. Tools <a name="tools"></a>
Minicom is a simple terminal usefull to scan serials

    sudo apt update -y
    sudo apt install minicom -y
    sudo minicom -D /dev/serial0
    
### 5.3 Protocols <a name="protocols"></a>

[Lely CANOpen](https://opensource.lely.com/canopen/docs/installation/)
    
#### 5.4 Databases <a name="databases"></a>

[WARP10](https://www.warp10.io/content/03_Documentation/02_Installation/01_Standalone)
## 6. Others Operating systems links<a name="oos"></a>

[Buildroot Boot in 5 sec video](https://www.youtube.com/watch?v=yxj8ynXXgbk)  
[Buildroot Github](https://github.com/buildroot/buildroot/blob/8d07baab43b5624ad6d73ee58f5a9d4ab8b27049/board/raspberrypi/readme.txt)  
[Yocto Tutorial](https://jumpnowtek.com/rpi/Raspberry-Pi-4-64bit-Systems-with-Yocto.html)  
[Redpesk Image - Marine Grade Linux](https://download.redpesk.bzh/redpesk-lts/arz-1.0/images/smack/minimal/aarch64/generic/latest/)  
[AGL Tutorial - Automotive Grade Linux](https://wiki.automotivelinux.org/agl-distro/agl-raspberrypi)  
[AGL Image](https://download.automotivelinux.org/AGL/snapshots/master/latest/raspberrypi4/)

## Disclaimers <a name="disclamers"></a>
*Copyright (C) 2022 [Austral Electronics SARL](http://austral-eng.com/en/accueil-english-2/). Changes to the specifications and features in this manual may be made by Austral without prior notice. Specifications and information provided in this manual are for informational use only. Austral assumes no responsibility or liability for any errors or inaccuracies that may appear in this manual including the product & / or software. All trademarks mentioned in this manual are property of their respective owners. This product contains copyrighted software which are released under multiple open source licenses including but not limited to the GNU GPL, LGPL, and MIT BSD licenses. Such software is provided without warranty. Copies of these licenses are included in the software itself in further detail. For the latest up to date information, please visit our Github Repository at https://github.com/austral-electronics/QuantumCM4*
  
![Logo](/images/LogoAustral.png)
