#!/bin/bash 

value=$1
mean=0
for((i=1;i<=$value;i++))
do
	reverse=`echo 1/$i | bc -l`
	mean=`echo $mean+$reverse | bc -l`
	echo "Harmonic mean for 1/$i = $mean"
done

echo "Harmonic mean of $value: "$mean
