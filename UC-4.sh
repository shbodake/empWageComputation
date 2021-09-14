#!/bin/bash

isFullTime=1;
isPartTime=2;
empRate=20;
randomCheck=$((RANDOM%3))
case $randomCheck in
   $isFullTime)
      echo "Fulltime"
      empHrs=8;;
   $isPartTime)
      echo "Parttime"
      empHrs=4;;
   *)
      echo absent
      empHrs=0;;
esac

salary=$(( $empHrs*$empRate ))
echo "Salary= $salary"
