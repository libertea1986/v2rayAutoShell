#!/bin/bash

cp config_server.json /usr/local/etc/v2ray/
cd /usr/local/etc/v2ray
ls -l
#config.json config_server.json
mv config.json config_old.json
mv config_server.json config.json
touch _error.log
chmod 666 _error.log
touch _access.log
chmod 666 _access.log

#测试配置文件是否写正确了，但不启动v2ray
#the ok should be seen
v2ray test

#启动
systemctl start v2ray

#看是否启动成功
#the status shall be "active"
systemctl status v2ray

#加入后台服务，每次开机自动启动
systemctl enable v2ray

#每次对config.json更新后，都要重启v2ray才生效,command
#systemctl restart v2ray
