#!/bin/bash 

function random_min_max(){
count=0
#generating the random array values
for (( i=1; i<=10; i++))
do
      temp[((count++))]=$((RANDOM%900+100))
done
echo ${temp[@]}
max=${temp[0]}
max_second=${temp[0]}
min=${temp[0]}
min_second=${temp[0]}
#finding Second min and max values
for((i=1; i<10; i++))
do
        if [ $min -gt ${temp[i]} ]
        then
                min_second=$min
                min=${temp[i]}
        elif [[ ($min_second -gt ${temp[i]}) && (${temp[i]} -ne $min) ]]
        then
                min_second=${temp[i]}
        fi
        if [ $max -lt ${temp[i]} ]
        then
                max_second=$min
                max=${temp[i]}
        elif [[ ($max_second -lt ${temp[i]}) && (${temp[i]} -ne $max) ]]
        then
                max_second=${temp[i]}
        fi
done

echo "Second Larget: "$max_second
echo "Second Smallest: "$min_second
}

#function call
random_min_max
