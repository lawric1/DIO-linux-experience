#!/bin/bash
echo Creating directories...;
sudo mkdir publico adm ven sec;

echo "Creating groups...";
for group in GRP_ADM GRP_VEN GRP_SEC; do sudo groupadd -v -r ${group}; done;

echo "Creating users...";
for user in carlos maria joao; do sudo useradd "$user" -m; done;

for user in debora sebastiana roberto; do sudo useradd "$user" -m; done;

for user in josefina amanda rogerio; do sudo useradd "$user" -m; done;

echo "Adding users to group GRP_ADM...";
for user in carlos maria joao; do sudo usermod -a -G GRP_ADM "$user"; done;

echo "Adding users to group GRP_VEN...";
for user in debora sebastiana roberto; do sudo usermod -a -G GRP_VEN "$user"; done;

echo "Adding users to group GRP_SEC...";
for user in josefina amanda rogerio; do sudo usermod -a -G GRP_SEC "$user"; done;

echo "Setting ownership...";
chown root:root /publico;
chown root:GRP_ADM /adm;
chown root:GRP_VEN /ven;
chown root:GRP_SEC /sec;

echo "Setting permissions...";
chmod 777 publico;
chmod 770 adm;
chmod 770 ven;
chmod 770 sec;
