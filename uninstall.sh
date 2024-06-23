#!/bin/bash

echo "Start uninstall"

sudo rm -rf /etc/udev/rules.d/80-usb.rules

sudo systemctl stop screen_lock.service
sudo rm -rf /etc/systemd/system/screen_lock.service

sudo rm -rf /usr/local/bin/screen_lock.sh

sudo rm -rf /usr/local/bin/start_lock.sh

sudo rm -rf /usr/local/bin/stop_lock.sh

sudo apt-get remove feh -y

echo "End uninstall"
echo "Reboot system!"