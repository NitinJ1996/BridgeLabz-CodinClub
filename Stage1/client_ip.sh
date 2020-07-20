#!/bin/bash 

lopp_count=0
data=`cat access.log | awk '{ print $1 }' | sort -u  | tail -n 4 `
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
