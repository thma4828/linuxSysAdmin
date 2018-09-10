#!/bin/bash
echo "----CPU/RAM USAGE----"
var1=$(free -m | grep Mem | cut -d' ' -f31)
echo  "Free RAM: ${var1} MB"
var2=$(uptime | cut -d: -f4)
echo "CPU load average: ${var2}"
echo "----USERS AND SHELLS----"
var3=$(cat /etc/passwd | wc -l)
let "var3 = var3 - 1"
echo "Number of users: ${var3}"
var4=$(cat /etc/passwd | grep bash | wc -l)
echo "Number of bash shells: ${var4}"
var5=$(cat /etc/passwd | grep false | wc -l)
echo "Number of false shells: ${var5}"
var6=$(cat /etc/passwd | grep nologin | wc -l)
echo "Number of nologin shells: ${var6}"
echo "----FILE SYSTEMs / DIRECTORIES----"
var7=$(find / -type f | wc -l)
echo "Number of files in the system: ${var7}"
var8=$(find / -type d | wc -l)
echo "Number of directories in the system: ${var8}"
echo "----NETWORK----"
var9=$(ping -w 1 127.0.0.1 | grep -e "packet loss" | cut -d, -f3 | cut -b 2)
if [ $var9 -eq 0 ]
	then
		echo "connectivity is successfull!"
fi
if [ $var9 -gt 0 ]
	then
		echo "connectivity failure!"
fi
echo -n "enp0s3 Bytes Recieved: "
var10=$(cat /proc/net/dev | grep enp0s3 | cut -d: -f2 | cut -d' ' -f4)
echo -n "$var10"
echo -n "        enp0s3 Bytes Transmitted: "
varBT=$(cat /proc/net/dev | grep enp0s3 | cut -d' ' -f49)
echo "$varBT"
varLO=$(cat /proc/net/dev | grep lo | cut -d: -f2 | cut -d' ' -f5)
echo -n "lo Bytes Recieved: $varLO"
varLT=$(cat /proc/net/dev | grep lo | cut -d: -f2 | cut -d' ' -f51)
echo "     lo Bytes Transmitted: $varLT"


