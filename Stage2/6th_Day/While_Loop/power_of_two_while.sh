#!/bin/bash

limit=$((2**$1))
i=1
while [ $i -le $(($limit/2)) ] 
do
	value=$((2*$i))
	echo $value
	((i++))
	if [ $value -eq 256 ]
	then
		break
	fi
done
