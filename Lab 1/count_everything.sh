#!/bin/bash
file=var.txt
lines=$(wc -l var.txt)
characters=$(wc -c var.txt)
words=$(wc -w $file)


echo "characters = $characters"
echo "lines =  $lines"
echo "words = $words"

echo "characters = $characters lines =  $lines words = $words" > test.txt
cat test.txt