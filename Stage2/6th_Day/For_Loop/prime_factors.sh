#!/bin/bash -x

read -p "Enter the value: " value
	for((i=2; i*i<=$value; i++))
	do
  		while [ $(($value%$i)) -eq 0 ]
  		do
    		value=$(($value/$i))
			echo "$i"
  		done
	done
