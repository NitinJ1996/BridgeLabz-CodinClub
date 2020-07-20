#!/bin/bash -x

read -p "Enter the value of x:" x
read -p "Enter the value of y:" y

if [ $x -gt $y ]
then
		echo "$x is greater than $y"
else
		echo "$x is smaller than $y"
fi
