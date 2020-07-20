#!/bin/bash -x

isfulltime=1
isparttime=2
max_hrs_in_month=4
num_working_days=20
emp_rate_per_hr=20

#variables
totalWorkingDays=0
totalWorkHours=0

function getWorkingHours(){
case $1 in
        $isfulltime)
                empHrs=9 ;;
        $isparttime)
                empHrs=4 ;;
        *)
                empHrs=0 ;;
esac
echo $empHrs
}

function calcDailyWage() {
	local workhrs=$1
	wage=$(($workhrs*$emp_rate_per_hr))
	echo $wage
}

while [[ ($totalWorkHours -lt $max_hrs_in_month) && ($totalWorkingDays -lt $num_working_days) ]]
do
   ((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	workHours="$( getWorkingHours $empCheck )"
	totalWorkHours=$(($totalWorkHours+$workHours))
	dailyWage[$totalWorkingDays]=$(($workHours*$emp_rate_per_hr))
done

total_salary="$( calcDailyWage $totalWorkHours )"
echo "Daily Wage " ${dailyWage[@]}

