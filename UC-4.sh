#!/bin/bash

isPartTime=1;
isFullTime=2;
empRate=20;
randomCheck=$((RANDOM%3))
case $randomCheck in
   $isPartTime)
      echo "Parttime"
      empHrs=8;;
   $isFullTime)
      echo "Fulltime"
      empHrs=9;;
   *)
      echo absent
      empHrs=0;;
esac

salary=$(( $empHrs*$empRate ))
echo "Salary= $salary"
