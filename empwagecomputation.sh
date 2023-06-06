#!/bin/bash -x
echo "Welcome to emoployee wage Computation"

Wageperhour=20
fulldayhour=8
randomcheck=$((RANDOM%2))
if [ $randomcheck -eq 1 ]
then
	echo "employee is present"
	Workinghours=8
else
	echo "employee is absent"
	Workinghours=0
fi
salary=$(($Wageperhour*$Workinghours))
echo "salary of emp :" $salary
