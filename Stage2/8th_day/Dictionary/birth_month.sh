#!/bin/bash -x

function birth_month(){

declare -A dict
for num in {1..50}
do
	birth_date=`shuf -n1 -i$(date -d '1992-01-01' '+%s')-$(date -d '1993-01-01' '+%s') | xargs -I{} date -d '@{}' '+%d/%m/%y'`
	option=$(date -d "$birth_date" '+%m')
	case $option in
		01) dict["$num"]="January, $birth_date" ;;
		02) dict["$num"]="February";;
		03) dict["$num"]="March";;
		04) dict["$num"]="April";;
		05) dict["$num"]="May";;
		06) dict["$num"]="June";;
		07) dict["$num"]="July";;
		08) dict["$num"]="August";;
		09) dict["$num"]="September";;
		10) dict["$num"]="October";;
		11) dict["$num"]="November";;
		12) dict["$num"]="December";;
		*) ;;
	esac
done

declare -A same_month
for num in "${!dict[@]}"
do
	count=0
	for i in "${!dict[@]}"
	do
		if [ ${dict[$num]} == ${dict[$i]} ]
		then
			individual_array[((count++))]=$i
		fi
	done
	same_month["${dict[$num]}"]=${individual_array[@]}
	unset individual_array
done

for value in ${!same_month[@]}
do
	echo "Individuals with birth month in $value-" ${same_month[$value]}
done

}

birth_month
