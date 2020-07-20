#!/bin/bash -x

die1=$(($RANDOM%6+1))
die2=$(($RANDOM%6+1))

echo "Sum: "$(( $die1 + $die2 ))
