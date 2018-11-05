#!/bin/sh
echo 正在安装Aria2...
sudo cp aria2c /usr/local/bin/
echo 正在配置Aria2...
if [ ! -d "/etc/aria2" ]; then
    sudo mkdir /etc/aria2/
fi
sudo cp aria2.conf /etc/aria2/
if [ ! -f "/etc/aria2/aria2.session" ]; then
    sudo touch /etc/aria2/aria2.session
    sudo chmod 777 /etc/aria2/aria2.session
fi
echo 正在配置下载路径...
sudo sed -i '' -e 's/username/'$USER'/' /etc/aria2/aria2.conf
echo 正在添加Aria2开机自启动...
if [ ! -f “/etc/init.d/aria2c” ]; then
    sudo cp boot /etc/init.d/aria2c
    sudo chmod 755 /etc/init.d/aria2c
fi
sudo update-rc.d aria2c defaults
sudo sed -i --follow-symlinks 's/exit 0/sudo service aria2c start\nexit 0/g' /etc/rc.local
echo 正在启动Aria2
sudo service aria2c start
 
