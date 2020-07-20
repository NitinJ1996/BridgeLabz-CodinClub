#!/bin/bash -x

return_value=0

function random(){
	count=0
	for (( i=1; i<=10; i++))
	do
		random_array[((count++))]=$((RANDOM%900+100))
	done
	return_value=({random_array[@]})
	return ${return_value[@]}
}


function second_max_min(){
	for i in "$@"
	do
        	new_array[((count++))]=$i
	done
	echo "Sorted Array: "${new_array[@]}
	echo "Second Larget: "${new_array[-2]}
	echo "Second Smallest: "${new_array[1]}
}


function sort_array(){
	sorted_array=`echo "${array[@]}" | sed 's/ /\n/g' | sort | sed -z 's/\n/ /g'`
	second_max_min ${sorted_array[@]}
}

array=$( random )
echo ${array[@]}
sort_array ${array[@]}
