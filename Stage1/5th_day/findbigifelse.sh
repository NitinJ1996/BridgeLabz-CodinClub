#!/bin/bash -x

read -p "Enter the value of x:" x
read -p "Enter the value of y:" y

if [ $x -ge $y ]
then
		echo "$x is greater than or equal to $y"
else
		echo "$x is smaller than $y"
fi
