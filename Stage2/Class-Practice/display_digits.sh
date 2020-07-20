#!/bin/bash -x

read -p "Enter a number from 1,10,100,1000,10000,100000: " num

if [ $num -eq 1 ]
then
	unit=$num
elif [ $num -eq 10 ]
then
	units=$(($num%10))
	tens=$(($num/10))
elif [ $num -eq 100 ]
then
	units=$(($num%10))
	tens=$(($num%100))
	hundreds=$(($num/100))
elif [ $num -eq 1000 ]
then
	units=$(($num%10))
	tens=$(($num%100))
	hundreds=$(($num%1000))
	thousands=$(($num/1000))
elif [ $num -eq 10000 ]
then 
	units=$(($num%10))
        tens=$(($num%100))
        hundreds=$(($num%1000))
        thousands=$(($num%10000))
	ten_thousands=$(($num/10000))
elif [ $num -eq 100000 ]
then
	units=$(($num%10))
        tens=$(($num%100))
        hundreds=$(($num%1000))
        thousands=$(($num%10000))
        ten_thousands=$(($num%10000))
	lakh=$(($num/100000))
else
	echo "Enter a number in the specified Range"
fi
