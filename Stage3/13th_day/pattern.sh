#!/bin/bash -x

read -p "Enter an input: " word

case $word in
	[a-zA-Z0-9]*[a-zA-Z][a-zA-Z][a-zA-Z]*[a-zA-Z0-9]) echo "$word acceptable" ;;
	[a-zA-Z][a-zA-Z][a-zA-Z]*[a-zA-Z0-9]) echo "$word acceptable" ;;
	[a-zA-Z][a-zA-Z][a-zA-Z]) echo "$word acceptable" ;;
	*) echo "$word not acceptable" ;;
esac

