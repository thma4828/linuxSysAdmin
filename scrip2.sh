#!/bin/bash
v1=$(df / | cut -d' ' -f10 | grep . | cut -b 1,2)
v2=$(df /boot | cut -d' ' -f16 | grep . | cut -b 1,2)
echo "slash dir at: ${v1}% || slash-boot dir at: ${v2}%"
if [ $v1 -gt 80 ]
	then
		echo "the root directory has reached 80%, email being sent to root"
fi 

if [ $v2 -gt 80 ]
	then
		echo "the boot directory has reached 80%, email being sent to root"
fi


	
