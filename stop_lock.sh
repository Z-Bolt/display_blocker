#!/bin/bash
echo "Stop Lock service">>/home/rock/display_blocker/lock.log
sudo systemctl stop screen_lock.service