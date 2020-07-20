#!/bin/bash 

for file in `ls *.txt`
do
	foldername=`echo $file | awk -F. '{print $1}'`
	if [ -d $foldername ]
	then 
		echo "moving $file to $foldername"
		mv $file $foldername
	else
		echo "creating new directory $foldername"
		mkdir $foldername
		cp $file $foldername
	fi
done
