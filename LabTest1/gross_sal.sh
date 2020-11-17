#!/bin/bash

da=0
read -p "Salary: " salary
hra=0

if [ $salary -lt 1500 ];then
	hra=$(echo "scale=3;0.90 * $salary" | bc)
	
	da=$(echo "0.10 * $salary " | bc)

else
	hra=$(echo "scale=3;0.95* $salary" | bc)

	da=$(echo "0.20 * $salary " | bc)

fi

gross_sal=$(echo "$salary +$da + $hra" | bc)

echo "Gross salary : $gross_sal"
