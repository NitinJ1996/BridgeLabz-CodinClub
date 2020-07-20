#!/bin/bash -x

read -p "Enter the year: " year
divisible_4=$(($year%4))
divisible_100=$(($year%100))
divisible_400=$(($year%400))


if [[ ($divisible_100 -eq 0) && ($divisible_400 -eq 0) ]]
then
	echo "LEAP YEAR"
elif [[ ($divisible_100 -ne 0) && ($divisible_4 -eq 0) ]]
then
		echo "LEAP YEAR"
else
		echo "NOT LEAP YEAR"
fi
