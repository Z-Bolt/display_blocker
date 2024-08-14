#!/bin/bash

host=`whoami`

config_path=($(find /home/$host/ $(pwd) -name KlipperScreen.conf ))

STATE=($(cat $config_path | grep "screen_lock" | cut -b 16-))
if [ $STATE == "True" ]; then
    echo "Start Lock service">>/home/rock/display_blocker/lock.log
    sudo systemctl start screen_lock.service
else
    sudo systemctl stop screen_lock.service
fi