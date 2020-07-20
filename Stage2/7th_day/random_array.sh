#!/bin/bash -x

function random(){
	count=0
	for (( i=1; i<=10; i++))
	do
		random_array[((count++))]=$((RANDOM%900+100))
	done
	echo ${random_array[@]}
}

random

