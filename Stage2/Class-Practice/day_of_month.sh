#!/bin/bash -x

start_date=`date -d "March 20" +"%m%d"`
end_date=`date -d "June 20" +"%m%d"`

check_date=`date -d "$2 $1" +"%m%d"`

if [[ ($check_date -ge $start_date) && ($check_date -le $end_date) ]]
then
		echo "True"
else
		echo "False"
fi
