#!/bin/bash

file_one=$1
file_two=$2

## read
content1=`cat $file_one`
content2=`cat $file_two`

## concat the contents
merged="$content1 $content2"

## move each word to its own row, sort and then glue them back
echo `echo $merged | xargs -n1 | sort | xargs`
