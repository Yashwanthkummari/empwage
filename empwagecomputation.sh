#!/bin/bash -x
echo "Welcome to emoployee wage Computation"

Wageperhour=20
Parttime=2
Fulltime=1
randomcheck=$((RANDOM%3))
if [ $randomcheck -eq $Fulltime ]
then
	echo "employee is present"
	Workinghours=8
elif [ $randomcheck -eq $Parttime ]
then
	echo "employee is Parttime"
	Workinghours=4
else
	echo "employee is absent"
	Workinghours=0
fi
salary=$(($Wageperhour*$Workinghours))
echo "salary of emp :" $salary
