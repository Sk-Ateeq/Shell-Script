#!/bin/bash
n=$1
for i in $(seq 1 10)
do
	z=$(expr $n \* $i)
if [ $z -ne 0  ] 
then
	echo "$n x $i = $z"
fi
done
