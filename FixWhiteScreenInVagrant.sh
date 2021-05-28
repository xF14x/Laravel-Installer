#!/bin/bash
sudo fallocate -l 1G /swapfile
wait
sudo chmod 600 /swapfile
wait
sudo mkswap /swapfile
wait
sudo swapon /swapfile
