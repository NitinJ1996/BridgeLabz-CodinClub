#!/bin/bash -x

read -p "enter a word: " word
pat="^[0-9]*[A-Za-Z]{3}[A-Za-Z0-9]*$"

if [[ $word =~ $pat ]]
then
	echo "Valid"
else
	echo "Invalid"
fi
