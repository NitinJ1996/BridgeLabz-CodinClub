#!/bin/bash 


function repeated_values(){
count=0
for i in {0..100}
do
	if [ $i -gt 9 ]
	then
	repeated=$( palindrome $i )
	repeated_array[count++]=$repeated
	fi
done

echo "Repeated Digits Array:" ${repeated_array[@]}
}

repeated_values
