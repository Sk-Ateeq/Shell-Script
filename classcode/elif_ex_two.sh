#!/bin/bash
marks=$1
if [ $marks -ge 35 ] && [ $marks -le 50 ]
then
	echo "Passed in 3rd grade"

elif [ $marks -gt 50 ] && [ $marks -le 70 ]
then
	echo "Passed in 2nd grade"
elif [ $marks -gt 70 ] && [ $marks -le 100 ]
then
	echo "Passed in 1st grade"
else 
	echo "Failed"
fi

