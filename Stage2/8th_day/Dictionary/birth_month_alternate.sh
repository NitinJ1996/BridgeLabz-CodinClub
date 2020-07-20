#!/bin/bash 

months=( jan feb mar apr may jun jul aug sep oct nov dec )

declare -A birth
for ((i=1;i<=50; i++))
do
	random_date=`shuf -n 1 -i $(date -d '1992-1-01' +%s)-$(date -d '1992-12-31' +%s)`
	var=`date -d @$random_date +%m`
	birth_date=`date -d @$random_date +%d-%b`
	month=`echo $((10#$var - 1))`
        key=${months[$month]}
        birth[$key]="${birth[$key]}${birth[$key]:+,}$i[$birth_date]"
done

for key in ${!birth[@]}
do
echo $key":"${birth[$key]}
done

