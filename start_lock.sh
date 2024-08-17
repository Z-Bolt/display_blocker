#!/bin/bash

config_path=($(find /home/rock/klipper_config -name KlipperScreen.conf ))

STATE=($(cat /home/rock/klipper_config/KlipperScreen.conf | grep "screen_lock" | cut -b 16-))
if [ $STATE == "True" ]; then
    echo "Start Lock service">>/home/rock/display_blocker/lock.log
    sudo systemctl start screen_lock.service
fi