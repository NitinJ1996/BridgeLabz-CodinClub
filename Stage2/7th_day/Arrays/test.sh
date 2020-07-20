#!/bin/bash -x

echo "enter the size of array.."
read s
echo "enter the elements of array A..."
for ((i=0; $i<$s; i++))
do
            read a[$i]
done
echo enter the elements of Array B
for ((i=0; $i<$s; i++))
do
            read b[$i]
done
echo "The sum of array is..."
for ((i=0; $i<$s; i++))
do
            c[$i]=`expr ${a[$i]} + ${b[$i]}`
            sum=`echo $(( ${a[$i]}+${b[$i]} ))`
		#echo ${c[$i]}
		echo sum
done
