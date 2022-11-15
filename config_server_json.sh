#!/bin/bash

#提升权限
#sudo su

#下载安装包
wget https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh

#check the download file, install-releash.sh will be shown
ls -l 

#安装
install-release.sh > v2ray_install.log


# download the server config file
wget https://github.com/v2fly/v2ray-examples/raw/master/VMess-TCP/config_server.json

#open the file and make some revision
vim config_server.json

# now you need to modify the config file as follows:
