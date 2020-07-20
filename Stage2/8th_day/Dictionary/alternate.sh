#!/bin/bash 

months_in_year=( jan feb mar apr may jun jul aug sep oct nov dec )

declare -A birthmonth
for ((i=1;i<=50; i++))
do
	random=$((RANDOM%12))
	key=${months_in_year[$random]}
	birthmonth[$key]="${birthmonth[$key]}${birthmonth[$key]:+,}$i"
done

for key in ${!birthmonth[@]}
do
echo $key"-"${birthmonth[$key]}
done

