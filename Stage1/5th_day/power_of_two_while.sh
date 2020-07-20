#!/bin/bash

limit=$((2**$1))
i=1
while [ $i -le $(($limit/2)) ] 
do
	echo $((2*$i))
	((i++))
done
