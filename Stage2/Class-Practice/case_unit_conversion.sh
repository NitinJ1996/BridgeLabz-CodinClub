#!/bin/bash -x

feet_to_inch=1
feet_to_meter=2
inch_to_feet=3
meter_to_feet=4

read -p "Enter the Value to be converted: " value
read -p "select the converion unit option{ 1-feet_to_inch, 2-feet_to_meter, 3-inch_to_feet, 4-meter_to_feet }: " unit

case $unit in
	$feet_to_inch) inches_from_feet=`echo $value*42 | bc -l` ;;
	$feet_to_meter) meter_from_feet=`echo $value*0.3048 | bc -l` ;;
	$inch_to_feet) feet_from_inches=`echo $value*0.0833333 | bc -l` ;;
	$meter_to_feet) feet_from_meter=`echo $value*3.28084 | bc -l` ;;
	*) echo "Enter the correct conversion unit" ;;
esac 
