#!/bin/bash -x
echo "Welcome to emoployee wage Computation"

Wageperhour=20
Parttime=2
Fulltime=1
numworkingdays=20
maxhrsinamonth=100
Totalemphrs=0
totalworkingdays=0

while [[ $Totalemphrs -le $maxhrsinamonth && $totalworkingdays -le $numworkingdays ]]
do
	((totalworkingdays++))
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
	Totalemphrs=$(($Totalemphrs+$Workinghours));
done
Totalsalary=$(($Totalemphrs*$Wageperhour));


