#!/bin/bash
isparttime=1;
isfulltime=2;
maxhrsinmonths=10;
emprateperhr=20;
nWorkingDays=20;

totalEmpHr=0;
totalWorkingDays=0;

while [[ $totalEmpHr -lt $maxhrsinmonth && $totalWorkingDays -lt $nworkingdays ]]
do
   ((totalWorkingDays++))
   empCheck=$((RANDOM%3));
	case $empCheck in
		$isfulltime)
			empHrs=8
		$isparttime)
			empHrs=4
		*)
			empHrs=0
	esac
   totalEmpHrs=$(($totalEmpHrs+$empHrs))
done

totalSalary=$(($totalEmpHrs*$emprateperhr));
echo "TOTAL EMPLOYEE HOURS=$totalEmpHrs"
echo "TOTAL SALARY=$totalSalary"
