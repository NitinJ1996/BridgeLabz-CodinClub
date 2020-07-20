#!/bin/bash -x

read -p "Enter your name:" name
read -p "Enter your name:" betTimes

declare -a countWin
winTimes=0
loseTimes=0

counter=0
while [ $counter -lt $betTimes ]
do
	betResult=$((RANDOM%2))
	if [ $betResult -eq 1 ]
	then
		countWin[$counter]=win
		((winTimes++))
		echo "user $name wins"
	else
		countWin[$counter]=lose
		((loseTimes++))
		echo "user $name loses"
	fi
	((counter++))
done

echo "win times: $winTimes"
echo "lose times: $loseTimes"
echo ${countWin[@]}
