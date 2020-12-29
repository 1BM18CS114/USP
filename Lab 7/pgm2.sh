#!/bin/bash

read -p "Enter User Name: " name

exist=$(cat /etc/passwd | grep -w $name | wc -l)
flag=0


if [ $exist -eq 0 ]; then
	echo "User does not exist!! "
	flag=1
	exit 1
else

	if [ $flag -eq 1 ];then
		echo ""
	else
		
		cat /etc/passwd | grep -w $name | cut -d ":" -f6
	fi

	
fi