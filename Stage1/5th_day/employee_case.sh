#!/bin/bash -x

isfulltime=1
isparttime=2
var=`echo $((RANDOM%3))`
empRatePerHr=15
case $var in
	$isfulltime)
                empHrs=9
		echo "Employee Present";;
	$isparttime)
                empHrs=4
		echo "Employee works part time" ;;
	*)	
		empHrs=0
                echo "Employee Absent" ;;
esac

salary=$(( $empRatePerHr * $empHrs ))
