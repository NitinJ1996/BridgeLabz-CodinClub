#!/bin/bash 

function triplets(){
	count=0
	result=0
	for i in "$@"
	do
		triplet_array[((count++))]=$i
	done

	echo ${triplet_array[@]}
	for((i=0; i<(($n-2)); i++))
	do
		for((j=i+1; j<=(($n-1)); j++))
		do
			for((k=j+1; k<$n; k++))
			do
				sum=`expr ${triplet_array[$i]} + ${triplet_array[$j]} + ${triplet_array[$k]}`
				if [ $sum -eq 0 ]
				then
					echo "Triplets: (${triplet_array[$i]},${triplet_array[$j]},${triplet_array[$k]}) "
					result=1
				fi
			done
		done
	done

	if [ $result -eq 0 ]
   then
      echo "No Triplets"
   fi
}


read -p "Enter the no_of elements in array: " n

if [ $n -gt 2 ]
then
	count=0
	for((i=0; i<$n; i++))
	do
		read -p "Enter the array value: " temp
		array[((count++))]=$temp
	done
	triplets ${array[@]}
else
	echo "Enter a value greater than 3"
fi
