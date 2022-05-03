
![Logo](/images/LogoAustral.png)

# 3. INSTALL DEBIAN HEADLESS PREEMPT-RT FROM SCRATCH"
## 3.1 Program the Micro SD-Card
* [Install the Imager, version >=1.7.2](https://downloads.raspberrypi.org/imager/)
* [Download the .xz image of Debian 11.3 "Bulleye"](https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2022-04-07/)
* Insert a Micro SD-Card in an USB3.0 Card Reader
* Launch the imager
* Choose a personalized image and select the downloaded image
* Select the SD-card
* Click on the gear icon to configure to the Advanced Options  

![Advanced Options](/images/AdvancedOptions.png)

* Program the Micro SD-Card

## 3.2 Configure Debian 

wget -O - https://github.com/austral-electronics/QuantumUltima/tree/main/scripts/configure.sh | bash

sudo su -c "bash <(wget -qO- https://github.com/austral-electronics/QuantumUltima/tree/main/scripts/configure.sh)" root

# 4. INSTALL DIETPI HEADLESS FROM SCRATCH
