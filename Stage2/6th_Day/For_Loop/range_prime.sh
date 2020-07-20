#!/bin/bash 

read -p "Enter the lower range: " lower
read -p "Enter the upper range: " upper
for((num=$lower; num<=$upper; num++))
do
	flag=0
	for((i=2; i<=$num/2; i++))
	do
  		if [ $(($num%$i)) -eq 0 ]
  		then
    		((flag++))
  		fi
	done
	if [ $flag -eq 0 ]
	then
		echo "$num is prime"
	fi
done
