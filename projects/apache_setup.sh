#!/bin/bash
echo "Update packages";
apt update;
apt upgrade -y;

echo "Installing apache and unzip...";
sudo apt install apache2 -y;
sudo apt install unzip -y;

echo "Downloading zip file into tmp folder...";
cd /tmp;
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip;

echo "Unpacking files...";
unzip main.zip;

echo "Copy files to apache folder";
cd linux-site-dio-main;
cp -R * /var/www/html/;