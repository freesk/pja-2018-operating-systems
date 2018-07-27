#!/bin/bash

path_to_file=$1

total=`cat $path_to_file | wc -l`
unique=`uniq < $path_to_file | wc -l`

echo "$unique unique numbers"
echo "$total total numbers"
echo "$[total-unique] repetitive numbers"
