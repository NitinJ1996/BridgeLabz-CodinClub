#!/bin/bash 

function degF(){
celcius=$1
var=`echo $celcius*9/5 | bc -l`
fahrenheit=`echo $var+32 | bc -l`
printf "%.2f" "$fahrenheit" 
}

function degC(){
fahrenheit=$1
var=`echo $fahrenheit-32 | bc -l`
celcius=`echo $var*5/9 | bc -l`
printf "%.2f" "$celcius"
}

read -p "Enter the value to be converted: " value
read -p "Select the converion option: Press-1 for Fahrenheit conversion Press-2 for Celcius conversion: " option

tofahrenheit=1
tocelcius=2
case $option in
	$tofahrenheit) 
						if [[ ($value -ge 0) && ($value -le 100) ]]
						then
								echo "Fahrenheit Value:" $( degF $value )"F"
						else
								"Enter the correct celcius value Freezing_Point=0C,Boiling_Point=100C"
						fi

						;;
	$tocelcius)
						if [[ ($value -ge 32) && ($value -le 212) ]]
                  then
                        echo "Celcius Value:" $( degC $value )"C"
                  else
                        "Enter the correct celcius value: Freezing_Point=32F,boiling_point=212F"
                  fi

                  ;;
	*) echo "Enter the correct option Specified" ;;
esac

