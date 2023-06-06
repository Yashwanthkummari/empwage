#!/bin/bash -x
echo "Welcome to emoployee wage Computation"

Wageperhour=20
Parttime=2
Fulltime=1
randomcheck=$((RANDOM%3))

case $randomcheck in
	$Fulltime)
	echo "employee is present"
	Workinghours=8;;

	$Parttime) 
	echo "employee is Parttime"
	Workinghours=4;;
	*)
	echo "employee is absent"
	Workinghours=0;;
esac
salary=$(($Wageperhour*$Workinghours))
echo "salary of emp :" $salary
