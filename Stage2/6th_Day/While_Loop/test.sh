#!/bin/bash -x

read -p "Enter a number between 1-100: " num
temp=$num
valid=true
upper_limit=100
lower_limit=0
while [ $valid ]
do
	$value_check=$(($temp/2))
	read -p "Number greater than $value_check Press 1 else press 0: " option
	if [ $option -eq 0 ]
	then
			temp=$value_check
	else
			temp=$((($value_check+$upper_limit)/2))
	fi
	if [$num -eq $temp ]
	then
		echo "Number found"
		break
	fi
done
