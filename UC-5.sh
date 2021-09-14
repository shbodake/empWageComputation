#!/bin/bash

isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
nWorkingDays=20;

for (( day=1; day<=$nWorkingDays; day++ ))
do
	empCheck=$((RANDOM%3));
		case $empCheck in
			$isPartTime)
      		empHrs=8;;
   		$isFullTime)
      		empHrs=9;;
   		*)
      		empHrs=0;;
		esac
#done
	salary=$(($empHrs * $empRatePerHr));
	totalSalary=$(($totalSalary + $salary));
done
echo "SALARY=$salary"
echo "TOTAL SALARY=$totalSalary"
