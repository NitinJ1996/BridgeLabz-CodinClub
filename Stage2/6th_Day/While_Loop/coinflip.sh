#!/bin/bash 

valid=true
head_count=0
tail_count=0
while [ $valid ]
do
	coin_flip=$((RANDOM%2))
	if [ $coin_flip -eq 1 ]
	then
		((head_count++))
	else
		((tail_count++))
	fi
	if [[ ($head_count -eq 11)  || ($tail_count -eq 11) ]]
	then
		break
	fi
done

echo "HEAD Wins: "$head_count
echo "TAIL wins: "$tail_count
