#!/bin/bash

STATE=($(cat /home/rock/klipper_config/KlipperScreen.conf | grep "True" | cut -b 17-))
if [[ -n $STATE ]]
then
    sudo echo "Start Lock service">>/home/rock/display_blocker/lock.log
    sudo systemctl start screen_lock.service
else
    sudo echo "Lock disable">>/home/rock/display_blocker/lock.log
    sudo systemctl stop screen_lock.service
fi