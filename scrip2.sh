#!/bin/bash
v1=$(df / | cut -d' ' -f10 | grep .)
v2=$(df /boot | cut -d' ' -f16 | grep .)
echo "slash dir at: ${v1} || slash-boot dir at: ${v2}"

