#!/bin/bash
cpu=$(top | head -3 | tail -1 | awk '{print $2}' | awk -F "." '{print $1}')
if [ $cpu -gt 3 ]
then
	echo "CPU Untilization is more than 3"
else
	echo "CPU Untilization is less than 3"
fi
