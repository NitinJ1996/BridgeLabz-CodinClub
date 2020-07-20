#!/bin/bash -x

read -p "Enter a number between 1-100: " num
temp=$num
sum_of_digits=0
if [[ ($num -le 100) && ($num -ge 1) ]]
then
	while [[ ($temp -gt 0) || ($sum_of_digits -gt 9) ]]
	do
		if [ $temp -eq 0 ]
		then
			temp=$sum_of_digits
			sum_of_digits=0
		fi
		digit=$(($temp%10))
		sum_of_digits=$(($sum_of_digits+$digit))
		temp=$(($temp/10))
	done
	if [ $sum_of_digits -eq 1 ]
   then
     echo "$num is Magic Number"
   else
     echo "$num is not Magic Number"
   fi
else
	echo "Enter a number between 1-100"
fi
