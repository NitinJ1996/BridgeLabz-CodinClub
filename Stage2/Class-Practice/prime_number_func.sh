#!/bin/bash -x

function prime_number(){
flag=0
num=$1
if [ $num -eq 1 ]
then
	echo "Neither Prime nor Composite"
else
	for((i=2; i<=$num/2; i++))
	do
  		if [ $(($num%$i)) -eq 0 ]
  		then
    		((flag++))
  		fi
	done
	if [ $flag -eq 0 ]
	then
        echo "$num is a Prime Number."
	else
        echo "$num is not Prime Number"
	fi
fi
}

read -p "Enter the number: " number
prime_number $number
