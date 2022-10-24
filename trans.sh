#!/bin/bash

# 项目
name=("command to change publick IP"                                                                                         
"docker-erpnext can't input email at first time when you log in(ERPNext11,12)"                                     
"created docker-compose-production.yml"
"erpnext v12 docker error" 
"v11 running error"
"please mount MariaDB and Redis Data in /var/lib/docker"
"Error response from daemon: failed to create shim: OCI runtime create failed: container_linux.go:380: starting ..."
"手动运行 下载mariadb数据库 致命错误"
"erpnext container can't start"
"Create a create container for creating erpnext site"
"After the successful installation getting Internal Server Error on Browser ")
len=${#name[*]}
# 后台运行脚本
for(( i=0;i<len;i++)) do {
    j=$[$i+1]
    echo "transfer and rename $j ${name[i]}"
    gh issue edit $j --title "${name[i]} [elk]"
    gh issue transfer $j Websoft9/docker-library
}&
done;

