#!/bin/bash -x


string=`echo $usersecret`
echo $string
if test -z "$string" 
then
	export  usersecret=dH34xJaa23
	echo $usersecret
	echo "seting Env"
else
	echo "error"
fi
