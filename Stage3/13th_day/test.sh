#!/bin/bash
shopt -s extglob

read -p "Enter a word: " word

if [[ $word == +(some|any)thing ]]
then
	echo "$word occurs"
else
	echo "$word does not occur"
fi

case $word in
	+(some|any)thing) echo $word "occurs" ;;
	*) echo $word "does not occur" ;;
esac
