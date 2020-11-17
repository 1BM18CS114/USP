#!/bin/bash

echo "1.Convert C -> F"
echo "2.Convert F -> C"
read -p "Enter Choice: " ch 

if [ $ch -eq 1 ];then
	read -p "Enter Temperature in Celcius: " tempc
	faren=$(echo "scale=2;($tempc*(9/5))+32" | bc)
	echo "$faren degreeF"

elif [ $ch -eq 2 ]; then
	#statements
	read -p "Enter Temperature in Farenheit: " faren
	celcius=$(echo "scale=2;(5/9)*($faren-32)" | bc)
	echo "Degree in Celcius= $celcius"

else
	echo "Wrong Choice!"
fi
