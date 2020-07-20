#!/bin/bash -x

read -p "Enter the value of x:" x
read -p "Enter the value of y:" y

z=$(($x+$y))

echo $z
