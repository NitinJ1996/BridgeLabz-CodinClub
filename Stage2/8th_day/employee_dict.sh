#!/bin/bash 

function empWorkHours(){
isfulltime=1
isparttime=2
case $1 in
        $isfulltime) empHrs=9 ;;
        $isparttime) empHrs=4 ;;
    	*)       empHrs=0 ;;
esac
	echo $empHrs
}

#constants
rate_per_hr=15
max_work_hours=40
max_work_days=20

#variables
total_work_hours=0
work_day=0

function empWage(){
	echo $(($rate_per_hr*$1))
}

declare -A dict
while [[ ($total_work_hours -lt $max_work_hours) && ($work_day -lt $max_work_days) ]]
do
	((work_day++))
	work_hours_per_day=$( empWorkHours $((RANDOM%3)) )
	dict["Day $work_day"]=$( empWage $work_hours_per_day )
	total_work_hours=$((total_work_hours+work_hours_per_day))
done

total_salary=$( empWage $total_work_hours )
echo $total_salary
for num in "${!dict[@]}"
do 
	echo $num" Wage: "${dict[$num]}
done
