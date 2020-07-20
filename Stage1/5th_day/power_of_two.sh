#!/bin/bash

limit=$((2**$1))
for (( i=1; i<=$(($limit/2)); i++ ))
do
	echo $((2*$i))
done
