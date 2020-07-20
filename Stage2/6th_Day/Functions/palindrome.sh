#!/bin/bash 

function palindrome(){
temp=$1
reverse=0
while [ $temp -ne 0 ]
do
        remainder=$(($temp%10))
        reverse=$(($reverse*10+$remainder))
        temp=$(($temp/10))
done
if [ $1 -eq $reverse ]
then
        echo "$1 is palindrome"
else
        echo "$1 is not palindrome"
fi
}

read -p "Enter the value: " value1
read -p "Enter the value: " value2

palindrome $value1
palindrome $value2
