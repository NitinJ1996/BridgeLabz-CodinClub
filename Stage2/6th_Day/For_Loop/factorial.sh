#!/bin/bash -x

read -p "Enter the value: " num
fact_num=1
for((i=1; i<=$num; i++))
do
	fact_num=$(($fact_num*$i))
done

echo "Factorial of $num: "$fact_num
