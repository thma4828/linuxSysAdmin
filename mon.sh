#!/bin/bash
v1=$(df / | cut -d' ' -f10 | grep . | cut -b 1,2)
v2=$(df /boot | cut -d' ' -f16 | grep . | cut -b 1,2)
echo "slash dir at: ${v1}% || slash-boot dir at: ${v2}%"
if [ $v1 -gt 80 ]
	then
		echo "the root directory has reached 80%, email being sent to root"
		touch tmfile.txt
		echo "root dir near full" >>tmfile.txt
		mail -s "dear sys admin" theodore.margoles@colorado.edu < tmfile.txt
		rm tmfile.txt
fi 

if [ $v2 -gt 80 ]
	then
		echo "the boot directory has reached 80%, email being sent to root"
		touch tm2.txt
		echo "boot dir near full" >>tm2.txt
		mail -s "dear sys admin" theodore.margoles@colorado.edu < tm2.txt
		rm tm2.txt
fi


	
