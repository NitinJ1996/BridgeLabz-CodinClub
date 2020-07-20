#!/bin/bash 

for file in `ls *.log.*`
do
	filename=`echo $file | awk -F. '{print $1}'`
	current_date=`date +"%m%d%Y"`
	new_file_name=$filename.$current_date.log
	if [ -d $filename ]
        then
                echo "renaming $file to $new_file_name"
                mv $file $new_file_name
                mv $new_file_name $filename
        else
		echo "creating folder"
		echo "renaming $file to $new_file_name"
		mkdir $filename
		mv $file $new_file_name
                mv $new_file_name $filename
       fi
done
