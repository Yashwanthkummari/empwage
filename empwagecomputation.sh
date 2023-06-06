#!/bin/bash -x
echo "Welcome to emoployee wage Computation"
function calculatingworkinghour() {
	case $1 in
		 1)
                
                Workinghours=8;;

                2)
                
                Workinghours=4;;
                0)
                
                Workinghours=0;;
	esac
	echo $Workinghours;
}
Wageperhour=20
numworkingdays=20
maxhrsinamonth=100
Totalemphrs=0
totalsalary=0
day=1;

while [[ $Totalemphrs -le $maxhrsinamonth && $day -le $numworkingdays ]]
do
	whour=$(calculatingworkinghour $((RANDOM%3)));
	Totalemphrs=$(($Totalemphrs + $whour));
	if [ $Totalemphrs -gt 100 ]
	then
	extrahours=$(($Totalemphrs - 100));
	whour=$(($Totalemphrs - $extrahours));
	fi
	salary=$(($whour * $Wageperhour));
	totalsalary=$(($totalsalary+$salary));
	((day++))
done
echo "employee has earned $totalsalary in a month for working for $whour" 


