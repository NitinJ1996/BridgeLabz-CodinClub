#!/bin/bash  

function die(){
declare -A dict
one=0
two=0
three=0
four=0
five=0
six=0
valid=true
while [ $valid ]
do
	die=$((RANDOM%6+1))
	case $die in
		1) 	((one++))
			dict["$die"]=$one ;;
		2) 	((two++))
			dict["$die"]=$two ;;
		3) 	((three++))
			dict["$die"]=$three ;;
		4) 	((four++))
			dict["$die"]=$four ;;
		5) 	((five++))
			dict["$die"]=$five ;;
		6) 	((six++))
			dict["$die"]=$(($six+1)) ;;
		*) dict["$die"]=0 ;;
	esac

	if [ ${dict["$die"]} -eq 10 ]
	then
		break
	fi
done

min=${dict[1]}

for num in "${!dict[@]}"
do
	echo $num"-"${dict[$num]}
	if [ ${dict[$num]} -eq 10 ]
	then
		max=${dict[$num]}
		max_count=$num
	elif [ ${dict[$num]} -le $min ]
	then
		min=${dict[$num]}
		min_count=$num
	fi
done

count=0
for i in ${!dict[@]}
do	
	if [ $min -eq ${dict[$i]} ]
	then
		array[((count++))]=$i
	fi
done

echo "Die that reached maximum value i.e $max: "$max_count
if [ ${#array[@]} -gt 1 ]
then
	echo "Die that reached minimum value i.e $min: "${array[@]}
else
	echo "Die that reached minimum value i.e $min: "$min_count
fi


}

die
