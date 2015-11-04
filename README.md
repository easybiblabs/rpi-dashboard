# Imagine Easy Monitoring Dashboard

## Hardware

* a Raspberry Pi (model not important)
* a microSD card
* (optional) WiFi adapter (EDIMAX EW-7811UN seems to work well enough)
* a screen

## Initial Setup

You need to do this only once:

* download + copy raspbian to the SD card
  * https://www.raspberrypi.org/downloads/raspbian/
  * https://www.raspberrypi.org/documentation/installation/installing-images/
* connect the RPi to ethernet and a screen, boot it up, it'll print its IP address
* if you need WiFi, `GOSUB` **Setup WiFi**
* **important** edit the `hosts` file (in this repo) and put in the RPi's IP address
* install `ansible` on *your* machine
  * `sudo apt-get install ansible`
  * `brew install ansible`

## Provisioning and Applying Updates

* get a coffee, open [this](https://youtu.be/dZ2DyQv-l78?list=PL3Pc3O3kb9q9UVknoSUoqG2sJ_jN3F6yb)
* run `make`

---

#### Setup WiFi

The easiest way to get wifi to work, is to connect a keyboard and screen to the
RPi, log in, and run `startx` (or, should that not work, `sudo raspi-config`
and select "boot to desktop").

Once in LXDE, you can join a network via the networking applet in the panel.
This will persist reboots and also still work if you don't start LXDE again.

**Important**: If you changed that, run `sudo raspi-config` again afterwards
and set it back to "boot to console".

`RET`
