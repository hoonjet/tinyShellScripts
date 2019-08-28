#!/bin/bash
# updated version of timer.sh
#  - Displays elapsed/remaining time
#  - Clear screen & echo time have passed when completed
#  - User can specify renew freqency

freq=1; # Update frequency (seconds)
waitTime=10; #total time (seconds)

elapsedTime=0; # Time elapsed

while [ $waitTime -gt $elapsedTime ];do
	
	remainingTime=$["$waitTime-$elapsedTime" | bc]
	#calculate remaining time

	#echo "${elapsedTime}s have passed. ${remainingTime}s remaining..."
	printf "${elapsedTime}s have passed. ${remainingTime}s remaining...\r";
	echo -e "\a"

	elapsedTime=$["$elapsedTime+$freq" | bc]
	#Update elapsed time

	sleep $freq

done

clear
echo "Done!! ${waitTime}(s) have passed."

