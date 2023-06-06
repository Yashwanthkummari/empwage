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
days=1;
i=0;
while [[ $Totalemphrs -le $maxhrsinamonth && $days -le $numworkingdays ]]
do
	whour=$(calculatingworkinghour $((RANDOM%3)));
	Totalemphrs=$(($Totalemphrs + $whour));
	if [ $Totalemphrs -gt 100 ]
	then
	extrahours=$(($Totalemphrs - 100));
	whour=$(($Totalemphrs - $extrahours));
	fi
	day=$days
	salary=$(($whour * $Wageperhour));
	daynumber=$(($i+1))
        salariesarray[((i++))]="day$daynumber=$salary"
	totalsalary=$(($totalsalary+$salary));
	((days++))
done
echo "employee has worked for $days days ina month for $Totalemphrs and earned $totalsalary" 
echo ${salariesarray[@]}

