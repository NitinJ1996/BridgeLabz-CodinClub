#!/bin/bash -x

read -p "Enter a postal code: " postal
pattern="^[[:digit:]]{3}[[:space:]]{0,1}[[:digit:]]{3}$"

if [[ $postal =~ $pattern ]]
then
	echo "Valid Postal Code"
else
	echo "Invalid Postal Code"
fi

