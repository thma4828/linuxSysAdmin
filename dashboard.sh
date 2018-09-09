#!/bin/bash
echo "----CPU/RAM USAGE----"
var1=$(free -m | cut -d' ' -f31 | tail -n 2 | grep . )
echo  "Free RAM: ${var1} MB"
var2=$(uptime | cut -d: -f4)
echo "CPU load average: ${var2}"
echo "----USERS AND SHELLS----"
var3=$(cat /etc/passwd | wc -l)
let "var3 = var3 - 1"
echo "Number of users: ${var3}"
var4=$(ps -ef | grep "bash" | wc -l)
echo "Number of bash shells: ${var4}"
var5=$(ps -ef | grep "false" | wc -l)
echo "Number of false shells: ${var5}"
var6=$(ps -ef | grep "nologin" | wc -l)
echo "Number of nologin shells: ${var6}"
echo "----FILE SYSTEMs / DIRECTORIES----"
var7=$(find .. /../.. -type f | wc -l)
echo "Number of files in the system: ${var7}"
var8=$(find ../../.. -type d | wc -l)
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
var10=$(cat /proc/net/dev | cut -b 10,11,12,13,14,15,16,17,18,19 | sort -nr | head -n 1 | cut -d' ' -f2)
echo "$var10"

