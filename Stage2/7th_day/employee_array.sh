#!/bin/bash -x

empRatePerHr=15
valid=true
fulltime=0
parttime=0
total_work_hours=0
while [ $valid ]
do
        var=`echo $((RANDOM%3))`
        if [ $var -eq 1 ]
        then
                empHrs=9
                echo "Employee Present"
                fulltime=$(($fulltime+$empHrs))
        elif [ $var -eq 2 ]
        then
                empHrspart=4
                echo "Employee Works part time"
                parttime=$(($parttime+$empHrspart))
        else
                echo "Employee Absent"
        fi
        total_work_hours=$(($total_work_hours+$fulltime+$parttime))
        if [ $total_work_hours -gt 50 ]
        then
                        break
        fi
done

total_salary=$(($empRatePerHr*$total_work_hours))
echo $total_salary
