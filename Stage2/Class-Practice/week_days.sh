#!/bin/bash -x

read -p "Enter a Single digit number: " digit
if [ $digit -eq 1 ]
then
   echo "SUNDAY"
elif [ $digit -eq 2 ]
then
   echo "MONDAY"
elif [ $digit -eq 2 ]
then
   echo "TWESDAY"
elif [ $digit -eq 4 ]
then
   echo "WEDNESDAY"
elif [ $digit -eq 5 ]
then
   echo "THRUSDAY"
elif [ $digit -eq 6 ]
then
   echo "FRIDAY"
elif [ $digit -eq 7 ]
then
   echo "SATURDAY"
else
   echo "Enter a number between 1-7"
fi
