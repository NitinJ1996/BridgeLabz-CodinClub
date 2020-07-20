#!/bin/bash 

read -p "Enter the number to be checked: " num
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
	echo "$num is a Prime Number."
else
	echo "$num is not Prime Number"
fi
