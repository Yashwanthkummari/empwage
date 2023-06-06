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
maxhrsinamonth=100
Totalworkhours=0
totalsalary=0
while [[ $Totalworkhours -le $maxhrsinamonth ]]
do
	whour=$(calculatingworkinghour $((RANDOM%3)));
	Totalworkhours=$(($Totalworkhours + $whour));
done
echo "WorkHours are $Totalworkhours"
