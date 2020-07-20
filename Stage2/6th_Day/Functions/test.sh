#!/bin/bash -x

read -p "Enter the value: " num
temp=$num
reverse=0
while [ $temp -ne 0 ]
do
	remainder=$(($temp%10))
	reverse=$(($reverse*10+$remainder))
        temp=$(($temp/10))
done
if [ $num -eq $reverse ]
then
	echo "$number is palindrome"
else
	echo "$number is not palindrome"
fi



#!/bin/bash -x

read -p "Enter the value: " num
len=`echo ${#num}`
while [ $len -ne 0 ]
do
        new=`echo $num | cut -c $len`
        y=$y$new
        ((len--))
done
echo $y
