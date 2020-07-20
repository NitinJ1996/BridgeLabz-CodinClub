#!/bin/bash -x

read -p "Enter a Single digit number: " digit
if [ $digit -eq 0 ]
then
	echo "ZERO"
elif [ $digit -eq 1 ]
then
	echo "ONE"
elif [ $digit -eq 2 ]
then
   echo "TWO"
elif [ $digit -eq 3 ]
then
   echo "THREE"
elif [ $digit -eq 4 ]
then
   echo "FOUR"
elif [ $digit -eq 5 ]
then
   echo "FIVE"
elif [ $digit -eq 6 ]
then
   echo "SIX"
elif [ $digit -eq 7 ]
then
   echo "SEVEN"
elif [ $digit -eq 8 ]
then
   echo "EIGHT"
elif [ $digit -eq 9 ]
then 
	echo "NINE"
else
	echo "Enter a number between 0-9"
fi

