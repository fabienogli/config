#! /usr/bin/zsh

if [[ -z "$2" ]]; then
   	printf "Apply function for each element of an associative array\n"
	printf "Usage: $0 array function\n"
	exit 1
fi

arr=$1

func=$2
	
for element  in "${(@k)arr}"; do
	associate_element="$arr[$element]"
	echo $func
	echo $element
	echo $associate_element
	$func "$element" "$associate_element"
done

