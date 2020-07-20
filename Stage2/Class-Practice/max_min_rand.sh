#!/bin/bash 

array=(`echo $((RANDOM%900+100))` `echo $((RANDOM%900+100))` `echo $((RANDOM%900+100))` `echo $((RANDOM%900+100))` `echo $((RANDOM%900+100))`)
echo ${array[@]}

max=`echo ${array[0]}`
min=`echo ${array[0]}`

for num in "${array[@]}"
do 
	if [ $num -gt $max ]
	then
			max=$num
	fi
	if [ $num -lt $min ]
	then
			min=$num
	fi
done

echo "MAX: "$max
echo "MIN: "$min
