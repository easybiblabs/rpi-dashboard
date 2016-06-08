# Imagine Easy Monitoring Dashboard

This is an ansible playbook that sets up a
[Dashing](https://github.com/Shopify/dashing) Dashboard on a Raspberry Pi.

It also sets up a VNC server on the RPi, so you can view the dashboard on
your own monitor if you want (FIXME: that doesn't make sense).

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
  * `sudo apt-get install ansible sshpass`
  * `brew install ansible`

## Provisioning

You probably also only need to do this once.

If you have a Dashing repo you want to have deployed:

* `make DASHING_GIT_REPO=git@github.com:YOUR/REPO.git`

If not (yet):

* `make`
  * (will use the default dashing example dashboard)

[This will take a while](https://youtu.be/dZ2DyQv-l78?list=PL3Pc3O3kb9q9UVknoSUoqG2sJ_jN3F6yb).

## Updating the Dashboard

It does a `get pull` on boot, so power-cycling the RPi should be enough.

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
