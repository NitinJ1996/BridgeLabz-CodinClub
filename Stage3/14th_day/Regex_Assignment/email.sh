#!/bin/bash

read -p "Enter an email: " email

pat="^[a-zA-Z0-9]+([.+_-]{1}[a-zA-Z0-9]{3,}){0,2}\@[a-zA-z]+\.[a-z]{2,}([.]{1}[a-z]{2,}){0,}$"

if [[ $email =~ $pat ]]
then
        echo "$email is Valid"
else
        echo "Enter a valid Email"
fi
