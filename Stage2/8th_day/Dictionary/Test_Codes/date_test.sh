#!/bin/bash

random_date=`shuf -n 1 -i $(date -d '1992-1-01' +%s)-$(date -d '1992-12-31' +%s)`
month=`date -d @$random_date +%m`
birth_date=`date -d @$random_date +%d-%b`

for i in {1..5}
do	
	random=$((RANDOM%366))
	display=`date -d "1992-01-01 $((RANDOM%366+1)) days" +%a-%d-%m-%y`
	echo $display
	
	random=`shuf -n 1 -i $(date -d '1992-01-01' '+%s')-$(date -d '1992-12-31' '+%s')`
	month=`date -d @$random +%m`
	birth_date=`date -d @$random +%d-%b`
	echo $month
	echo $birth_date

done


for i in {1..10}
do 
	specific_date=`date -d "$((1992))-$((02))-$((RANDOM%31+1))" +%d-%b-%y`
        echo $specific_date
done
