#!/bin/bash

echo "[+] Start installation..."

echo "[+] Creating Rules..."
sudo cp -f /home/rock/display_blocker/80-usb.rules /etc/udev/rules.d/80-usb.rules
sudo chmod 777 /etc/udev/rules.d/80-usb.rules

echo "[+] Creating a screen lock service..."
sudo cp -f /home/rock/display_blocker/screen_lock.service /etc/systemd/system/screen_lock.service
sudo chmod 777 /etc/systemd/system/screen_lock.service

echo "[+] Creating screen lock scripts."
sudo cp -f /home/rock/display_blocker/screen_lock.sh /usr/local/bin/screen_lock.sh
sudo chmod 777 /usr/local/bin/screen_lock.sh

echo "[+] Creating screen lock scripts.."
sudo cp -f /home/rock/display_blocker/start_lock.sh /usr/local/bin/start_lock.sh
sudo chmod 777 /usr/local/bin/start_lock.sh

echo "[+] Creating screen lock scripts..."
sudo cp -f /home/rock/display_blocker/stop_lock.sh /usr/local/bin/stop_lock.sh
sudo chmod 777 /usr/local/bin/stop_lock.sh

echo "[+] Installing an Image Manager..."
sudo apt-get install feh -y

echo "End installing..."
echo "Reboot system!"