#!/bin/bash -x

shopt -s extglob
read -p "Enter a postal code: " postal

pat="^[^a-zA-Z\W\s][0-9]{3}[ ]{0,1}[0-9]{3}[^a-zA-Z\W\s]$"


if [[ $postal =~ $pat ]]
then
	echo "Valid"
else
	echo "Invalid"
fi


