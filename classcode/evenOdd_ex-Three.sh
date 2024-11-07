#!/bin/bash
n=$1
z=$(expr $n % 2)
if [ $z -ne 0 ]
then
	echo "Given $n is odd"
else
	echo "Given $n is even"
fi
