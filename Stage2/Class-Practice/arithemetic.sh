#!/bin/bash 

read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c

p=`echo $a+$b*$c | bc -l`
q=`echo $c+$a/$b | bc -l`
r=`echo $a%$b+$c | bc -l`
s=`echo 1*$b/$c | bc -l`

array=($p $q $r $s)
echo ${array[@]}

max=`echo ${array[0]}`
min=`echo ${array[0]}`

for num in "${array[@]}"
do
        if [ $(echo "$num>$max"| bc) -ne 0 ]
        then
                        max=$num
        fi
        if [ $(echo "$num<$min"| bc) -ne 0 ]
        then
                        min=$num
        fi
done

echo "MAX: "$max
echo "MIN: "$min
