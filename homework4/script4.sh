#!/bin/bash

filename=$1
head=$(head -n 1 $filename)
min=$head
max=$head
sum=0

while read n
	do
		if (( n < min )); then
			min=$n
		elif (( n > max )); then
			max=$n
		fi
		sum=$((sum + n))
done <<< "$(cat $filename)"

echo "min: $min"
echo "max: $max"
echo "sum: $sum"
