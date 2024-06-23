#!/bin/bash
echo "Start Lock service">>/home/rock/display_blocker/lock.log
sudo systemctl start screen_lock.service