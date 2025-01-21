#!/bin/bash

STATE=($(cat /home/pi/printer_data/config/KlipperScreen.conf | grep "True" | cut -b 17-))
if [[ -n $STATE ]]
then
    sudo echo $STATE>>/home/pi/display_blocker/lock.log
    sudo echo "Start Lock service">>/home/pi/display_blocker/lock.log
    sudo systemctl start screen_lock.service
else
    sudo echo $STATE>>/home/pi/display_blocker/lock.log
    sudo echo "Lock disable">>/home/pi/display_blocker/lock.log
    sudo systemctl stop screen_lock.service
fi