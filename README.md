# Imagine Easy Monitoring Dashboard

## Hardware

* a Raspberry Pi (model not important)
* a microSD card
* (optional) WiFi adapter (EDIMAX EW-7811UN seems to work well enough)
* a screen

## Initial Setup

* download + copy raspbian to the SD card
  * https://www.raspberrypi.org/downloads/raspbian/
  * https://www.raspberrypi.org/documentation/installation/installing-images/
* connect the RPi to ethernet and a screen, boot it up, it'll print its IP address
* if you need WiFi, GOSUB **Setup WiFi**
* **important** edit the `hosts` file (in this repo) and put in the RPi's IP address
* install `ansible` on *your* machine
  * `sudo apt-get install ansible`
  * `brew install ansible`
* run `make`

## Updates

* run `make`

## Setup WiFi

* with the RPi on ethernet, do `ssh pi@RPI_IP_ADDRESS` (pw `raspberry`)
* `sudo vi /etc/network/interfaces`:
```
auto wlan0
allow-hotplug wlan0
iface wlan0 inet dhcp
        wpa-ssid "YOUR_WIFI_SSID"
        wpa-psk "YOUR_WIFI_PASSWORD"

iface default inet dhcp
```
* remove ethernet cable and `sudo reboot`
* let it boot up and print its IP address, use that one
* RET
