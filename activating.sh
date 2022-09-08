#/bin/bash
read -p "servisi daxil edin:" service
active=$(systemctl status $service | awk NR==3 | awk -F " " '{print $2}') 

if [ $active != "active" ];then
	echo "aktiv deyil"
else 
	echo "aktivdir!"
fi
