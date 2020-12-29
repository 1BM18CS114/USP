#!/bin/bash

#Write a NonRecursive shell script that accepts any number of command line arguments and  
#prints them in reverse order 

echo "number of args = $#"






for i in $@;
do
	echo "$i"
done | tac


# for i in $#; do
# 	#statements
# 	echo $i
# done