#!/bin/bash

#finding Prime factors
function prime_factors(){
	value=$1
        for((i=2; i*i<=$value; i++))
        do
                while [ $(($value%$i)) -eq 0 ]
                do
                value=$(($value/$i))
                        echo "$i"
                done
        done
}

read -p "Enter the value: " value
prime_factors $value
