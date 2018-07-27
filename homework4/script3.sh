#!/bin/bash
fib()
{
  n=$1

	if (( n <= 1 )); then
		echo $n
	else
		fibo=1
	  fiboPrev=1

		for((i=2; $i < $n ; ++i)); do
			temp=$fibo
		  fibo=$((fibo+fiboPrev))
			fiboPrev=$temp
		done

		echo $fibo
	fi
}

echo ${1}"th Fibbonaccy number is $(fib $1)"
