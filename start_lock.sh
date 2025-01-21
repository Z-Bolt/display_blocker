#!/bin/bash

STATE=($(cat /home/pi/klipper_config/KlipperScreen.conf | grep "True" | cut -b 17-))
if [[ -n $STATE ]]
then
    sudo echo $STATE
    sudo echo "Start Lock service">>/home/pi/display_blocker/lock.log
    sudo systemctl start screen_lock.service
else
    sudo echo $STATE
    sudo echo "Lock disable">>/home/pi/display_blocker/lock.log
    sudo systemctl stop screen_lock.service
fi