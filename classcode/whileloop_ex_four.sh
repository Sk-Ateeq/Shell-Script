#!/bin/bash
n=1
while [ $n -le 100 ]
do
	echo "$n"
	n=$(expr $n + 1)
done
