#!/bin/bash -x

var=`echo $((RANDOM%3))`
empRatePerHr=15
if [ $var -eq 1 ]
then 
		empHrs=9
		echo "Employee Present"
		echo "EmployeeWage : "$(($empRatePerHr*$empHrs))
elif [ $var -eq 2 ]
then
		empHrspart=4
		echo "Employee Works part time"
		echo "EmployeeWage : "$(($empRatePerHr*$empHrspart))
else
		echo "Employee Absent"
		echo "EmployeeWage: 0"
fi
