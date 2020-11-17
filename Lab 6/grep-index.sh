#!/bin/bash

# read -p "Enter phrase to search!: " phrase
# read -p "Enter FileName: " filen

# grep -n $phrase $filen

#!/shell/bin
echo "Enter word to be search "
read word 
echo "Enter the document name"
read docu

a=`grep -n $word $docu`
for data in $a
do
echo $data
done