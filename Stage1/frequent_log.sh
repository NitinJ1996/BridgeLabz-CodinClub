#!/bin/bash 

lopp_count=0
data=`tail -n 40 access.log | awk '{ print $7 }' | sort -u`
for url in $data
do 
	loop_count=$(($loop_count+1))
	count=`cat access.log | grep $url | wc -l`
	echo $count $url
	if [ $loop_count -eq 4 ]
   	then
      		break
   	fi
done
