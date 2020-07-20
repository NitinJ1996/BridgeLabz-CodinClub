#!/bin/bash -x

coin_flip=$((RANDOM%2))
if [ $coin_flip -eq 1 ]
then
	echo "Heads"
else
	echo "Tails"
fi
