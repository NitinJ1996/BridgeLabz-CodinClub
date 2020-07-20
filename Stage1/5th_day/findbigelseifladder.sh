#!/bin/bash -x

read -p "Enter the value of x:" x
read -p "Enter the value of y:" y

if [ $x -gt $y ]
then
		echo "x=$x is greater than y=$y"
elif [ $x -eq $y ]
then
		echo "x=$x is equal than y=$y"
else
		echo "x=$x is smaller than y=$y"
fi
