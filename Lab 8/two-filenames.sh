#!/bin/bash



if [ $# -eq 0 ] || [ $# -lt 2 ];then
	echo "Usage: $0 file1 file2"
else
	perm1=$(ls -l $1 | cut -c 2-10)
	perm2=$(ls -l $2 | cut -c 2-10)
	if [ "$perm1" == "$perm2" ];then
		echo "Same permissions!"
	else
		echo "Different Permissions"
		echo "Permission of $1: $perm1"
		echo "Permission of $2: $perm2"
	fi

fi