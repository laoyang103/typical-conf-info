#!/bin/bash

echo "shutdown crontab ..."
service cron stop

echo "install all deb package ..."
dpkg -i *.deb

echo "shutdown java process ..."
killall -9 java

echo "cleanup java log ..."
rm -f /opt/apache-tomcat-6.0.37/logs/*.log
echo > /opt/apache-tomcat-6.0.37/logs/catalina.out

echo "updating java ROOT.war ..."
rm -rf /opt/apache-tomcat-6.0.37/webapps/ROOT
rm -rf /opt/apache-tomcat-6.0.37/webapps/ROOT.war
cp ROOT.war /opt/apache-tomcat-6.0.37/webapps/

echo "updating mysql database ..."
mysql -uroot -p123456 < ipm.sql
echo "shutdown mysql process ..."
service mysql stop

./lub -b
read -p 'please input backup filesystem file name(absolute path)' backup_fs
read -p 'please input the old iso file name(absolute path)' old_iso

echo "mount $old_iso on ./mnt ..."
mkdir -p ./mnt
mount -o loop $old_iso ./mnt

echo "rsync ./mnt to ./livecd without filesystem.squashfs ..."
mkdir -p `pwd`./livecd
rsync -a --exclude=install/filesystem.squashfs ./mnt/ ./livecd/ 

echo "copy $backup_fs to ./livecd ..."
cp $backup_fs ./livecd/install/filesystem.squashfs
chmod +x ./livecd/install/filesystem.*

echo "create md5sum.txt in ./livecd ..."
cd ./livecd
rm md5sum.txt
find -type f -print0 | sudo xargs -0 md5sum | grep -v ./isolinux/ | grep -v ./md5sum.txt | sudo tee md5sum.txt

read -p 'please input the new iso file name' new_iso
echo "create $new_iso ..."
cd ./livecd
mkisofs -D -r -V "$IMAGE_NAME" -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o ../$new_iso .
