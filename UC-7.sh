#!/bin/bash
isparttime=1;
isfulltime=2;
maxhrsinmonth=4;
emprateperhr=20;
nworking days=20;

totalEmpHours=0;
totalWorkingDays=0;

function getWorkHrs() {
	local $empCheck=$1
	case $empCheck in
   	$IS_FULL_TIME)
      	empHrs=8
   	$IS_PART_TIME)
      	empHrs=4
   	*)
      	empHrs=0
	esac
echo $empHrs
}

while [[ $totalEmpHours -lt $maxhrsinmonth && $totalWorkingDays -lt $nworkingdays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3));
	empHrs="$( getWorkHrs  $empCheck )"
	totalEmpHours=$(($totalEmpHours+$empHrs))
done

totalSalary=$(($totalEmpHours*$emprateperhr));
echo "TOTAL EMPLOYEE HOURS=$totalEmpHours"
echo "TOTAL SALARY=$totalSalary"
