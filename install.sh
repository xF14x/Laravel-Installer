#!/bin/bash

# This code Programmed By Suliman Al-Mohawis "F14Commander"
# Github "xF14x"
# Twitter "@F14Commander"
echo "Update The Packages.."
sudo apt update && sudo apt full-upgrade -y
wait
echo "Done!"
echo "Install The Packages.."
sleep 1
sudo apt install apache2 php libapache2-mod-php php-mbstring php-xml php-tokenizer php-zip php-curl php-json mysql-server phpmyadmin composer -y
wait
read -p "The Dir to install: " Dir
wait
cd $Dir && composer create-project --prefer-dist laravel/laravel site -vvv
wait
sudo rm -rf /var/www/html
wait
sudo ln -s $Dir/site/public /var/www/html
cd site/ && chmod 777 storage/ -R && chmod 777 bootstrap/cache -R
clear
echo """ 
# This script Programmed By Suliman Al-Mohawis \"F14Commander\"
# Github \"xF14x\"
# Twitter \"@F14Commander\"
"""
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
echo "now enable the apache2 rewrite mod \"AllowIverride\""
echo "and thene enter \"sudo a2enmod rewrite\""
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
echo "and enter \"sudo mysql_secure_installation\""
echo "CREATE USER 'YOUR-USERNAME'@'localhost' IDENTIFIED BY 'YOUR-PASSWORD';"
echo "GRANT ALL PRIVILEGES ON *.* TO 'YOUR-USERNAME'@'localhost' WITH GRANT OPTION;"
echo "FLUSH PRIVILEGES;"
exec bash
