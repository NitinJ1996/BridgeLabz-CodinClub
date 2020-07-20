#!/bin/bash -x

empRatePerHr=15
fulltime_work_hours=0
parttime_work_hours=0
counter=0
for i in {1..20}
do
        var=`echo $((RANDOM%3))`
        if [ $var -eq 1 ]
        then
                empHrs=9
                echo "Employee Present"
		employee_array[((counter++))]=$(($empRatePerHr*$empHrs))
                fulltime_work_hours=$(($fulltime_work_hours+$empHrs))
        elif [ $var -eq 2 ]
        then
                empHrspart=4
                echo "Employee Works part time"
                employee_array[((counter++))]=$(($empRatePerHr*$empHrspart))
		parttime_work_hours=$(($parttime_work_hours+$empHrspart))
        else
                echo "Employee Absent"
        fi
done

total_work_hours=$(($fulltime_work_hours+$parttime_work_hours))
total_salary=$(($empRatePerHr*$total_work_hours))

employee_array[((counter++))]=$(($total_salary))
echo ${employee_array[@]}
