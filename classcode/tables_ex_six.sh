#!/bin/bash
n=$1
i=1
while [ $i -le 10 ]
do
	z=$(expr $n \* $i)
	if [ $z -ne 0 ]
	then
		echo "$n x $i = $z"
	fi
	i=$(expr $i + 1)
done
