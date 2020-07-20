#!/bin/bash -x

read -p "Enter a number from 1,10,100,1000,10000,100000: " num

case $num in
	1) unit=$num 
		;;

	10) units=$(($num%10))
        tens=$(($num/10))
		;;

	100)	units=$(($num%10))
      	tens=$(($num%100))
      	hundreds=$(($num/100))
		;;

	1000)
       	units=$(($num%10))
        	tens=$(($num%100))
        	hundreds=$(($num%1000))
        	thousands=$(($num/1000))
		;;

	10000)
			units=$(($num%10))
        	tens=$(($num%100))
        	hundreds=$(($num%1000))
        	thousands=$(($num%10000))
        	ten_thousands=$(($num/10000))
		;;

	100000)
        	units=$(($num%10))
        	tens=$(($num%100))
        	hundreds=$(($num%1000))
        	thousands=$(($num%10000))
        	ten_thousands=$(($num%10000))
        	lakh=$(($num/100000))
		;;
	
	*)
			echo "Enter a number in the specified Range"
		;;
esac
