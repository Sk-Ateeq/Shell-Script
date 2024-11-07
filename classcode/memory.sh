#!/bin/bash
disk=$(df -h | head -5 | tail -1 | awk '{print $5}'| awk '{gsub(/%/," ");print $0}')
if [ $disk -le  20 ]
then
	echo "usage is less than 25"
else
        aws ec2 create-volume \
    --availability-zone eu-north-1a \
    --size 10 \

fi

