#!/bin/bash 

for i in {1..100}
do
        rem=$((i%10))
        div=$((i/10))
        if [ $rem -eq $div ]
        then
                repeated_array[((count++))]=$i
        fi
done

echo "Repeated Digits Array: "${repeated_array[@]}
