#!/bin/bash 

valid=true
win_count=0
bet_count=0
initial_amount=100
bet_amount=1
while [ $valid ]
do
	gamble=$((RANDOM%2))
	((bets_count++))
	if [ $gamble -eq 1 ]
	then
		((win_count++))
		initial_amount=$(($initial_amount+$bet_amount))
	else
				initial_amount=$(($initial_amount-$bet_amount))
	fi
	if [[ ($initial_amount -eq 0)  || ($initial_amount -eq 200) ]]
	then
		break
	fi
done

echo "Bets Won: "$win_count
echo "Bets made: "$bets_count
