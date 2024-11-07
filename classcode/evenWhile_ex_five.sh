#!/bin/bash
n=0
while [ $n -le 100 ]
do
	z=$(expr $n % 2)
	if [ $z -eq 0 ]
	then
		echo "$n"
	fi
	n=$(expr $n + 1)
done
