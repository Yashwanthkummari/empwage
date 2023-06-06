#!/bin/bash -x
echo "Welcome to emoployee wage Computation"

randomcheck=$((RANDOM%2))
if [$randomcheck -eq 1 ]
then
	echo "employee is present"
else
	echo "employee is absent"
fi
