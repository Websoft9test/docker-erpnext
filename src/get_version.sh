sudo echo "erpnext version:" $(docker exec -it $1 cat app_versions.json |grep -m 1 "erpnext" |awk '{print $2}') |sudo tee -a /data/logs/install_version.txt
