#!/bin/bash -x

read -p "Enter a Mobile number: " number
if [[ $number =~ ^[0-9]{2}[[:space:]][1-9][0-9]{9}$ ]]
then
        echo "$number valid"
else
        echo "Enter a valid number"
fi

read -p "Enter a password: " password

special='^[A-Za-z0-9]*[@#$%&=*_-][A-Za-z0-9]*$'
if [[ ${#password} -ge 8 && "$password" =~ [[:upper:]]+ && "$password" =~ [[:digit:]]+ && $password =~ $special ]]
then
        echo "Password Valid"
else
        echo "Password Not Valid"
fi

