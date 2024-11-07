#!/bin/bash
for i in $(seq 1 100)
do
	z=$(expr $i % 2)
if [ $z -eq 0 ]
then 
	echo "$i"
fi
done
