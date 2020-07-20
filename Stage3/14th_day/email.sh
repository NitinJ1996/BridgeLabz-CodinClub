#!/bin/bash

read -p "Enter the email: " email

pat="^[a-zA-Z0-9]+([.+_-]{1}[a-zA-Z0-9]{3,}){0,2}\@[a-zA-z0-9]+[.][a-z]{2,}([.][a-z]{2,})?$"

if [[ $email =~ $pat ]]
then
	echo "Valid"
else
	echo "Invalid"
fi

