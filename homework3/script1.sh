#!/bin/bash

min_args=2
num_of_args=$#

## if less than
if [ "$num_of_args" -lt "$min_args" ]
  then
    echo "Please, provide at least $min_args arguments"
    exit 1
fi

## read from user
read n

## if less or equal to
if [ "$n" -le "$min_args" ]
  then
    echo "The $n argument is already checked"
fi

## if less than
if [ $num_of_args -lt $n ]
  then
    echo "The $n arguemnt does not exist"
    exit 1
fi

echo "A-OK"
