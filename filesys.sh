#!/bin/bash
#theodore margoles
echo "------------------"
echo "output from fstab file: "
cat /etc/fstab |  grep "#" -v
echo "------------------"
echo "output from df -h: "
df -h
echo "------------------"
echo "output from mount: "
mount
