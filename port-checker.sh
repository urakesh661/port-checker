#!/bin/bash

if [[ -z $1 ]]; then
	echo "File containing host names not provided."
	exit
fi

if [[ $# -eq 2 ]]; then
    port=$2 
else
    port=(22 80 443 )
fi

for i in $(cat $1);do
	nc -zv -w2 $i "${port[@]}" 2>&1 | grep "succeeded!"
done
