#!/bin/bash -x

sum=0
for i in {1..5}
do
	two_digit=$((RANDOM%90+10))
	sum=$(($sum+$two_digit))
done

average=`echo $sum/5 | bc -l`
echo "Sum is: "$sum
printf '%0.2f' $average
