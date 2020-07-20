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
if [ $1 -eq $reverse ] #checks for palindrome
then
        echo $reverse #returns the reversed value if its a palindrome
else
        echo 0
fi
}

function prime(){
flag=0
num=$1
if [ $num -eq 1 ] 
then
        echo 2 #returns 2 if number is 1
else
        for((i=2; i<=$num/2; i++))
        do
                if [ $(($num%$i)) -eq 0 ]
                then
                ((flag++))
                fi
        done
        if [ $flag -eq 0 ]
        then
      		echo 1 #returns 1 if it is a prime number
        else
				echo 0 #returns 0 if it is not a prime number
        fi
fi
}

function palindrome_prime(){
number=$1
palindrome_value=$( palindrome $number ) #function for palindome is called
if [ $palindrome_value -ne 0 ]
then
		palindrome_prime_check=$( prime $palindrome_value ) #function to check prime number is called
		if [ $palindrome_prime_check -eq 1 ]
		then
      		echo "$number and its palindrome are prime"
		else
      		echo "$number is prime but $palindrome_value is not Prime"
		fi
else
      echo "$number is not Palindrome"
fi
}

read -p "Enter the number: " value
prime_check=$( prime $value ) #function to check prime number is called
if [ $prime_check -eq 1 ] 
then
		echo "$value is prime"
		palindrome_prime $value
elif [ $prime_check -eq 2 ]
then
      echo "$value is neither Prime nor Composite"
else
      echo "$value is not Prime"
fi
