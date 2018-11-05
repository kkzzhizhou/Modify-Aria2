#!/bin/sh
echo 正在结束相关进程
killall aria2c
echo 正在卸载Aria2
sudo rm -f /usr/local/bin
echo 正在删除相关配置文件
sudo rm -rdf /etc/aria2
sudo update-rc.d -f aria2c remove
sudo sed -i --follow-symlinks 's/sudo service aria2c start//g' /etc/rc.local