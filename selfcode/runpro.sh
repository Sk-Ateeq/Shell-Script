#!/bin/bash
var= grep -i "$1" anime/attackontitan
if $var;
then
	echo "The Given $1 is present"
else
	echo "The Given $1 is not Present"
fi
