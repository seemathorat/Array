#!/bin/bash -x


#constatnt for the program

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HR_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAY=20;


#VARIABLE
 totalEmpHr=0;
totalWorkingDay=0;

function getWorkingHours()
{

case $1 in

$IS_FULL_TIME)

workHr=8
;;

$IS_PART_TIME)
workHr=4
;;

*)
workHr=0
;;
esac
echo $workHr
}
  while [[ $totalWorkHr -lt $MAX_HR_IN_MONTH &&  $totalworkingDay -lt $NUM_WORKING_DAY
]]
 do

((totalWorkingDay ++))

workHr="$( getWorkingHours $((RANDOM%3)) )"

totalWorkHr=$(($totalWorkHr+$workHr))
dailyWage[$totalWorkingDay]=$(($workHr*$wageperHr))
done
totalSalary=$(($totalWorkHr*$EMP_RATE_PER_HR));
echo $totalSalary
echo ${dailywage[@]}



