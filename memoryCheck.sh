#!/bin/bash
# Check Memory usage by using 'free' command

# Memory usage
totalMem=$(free -m | awk 'NR==2 {print $2}');
usageMem=$(free -m | awk 'NR==2 {print $3}');

# Swap memory usage
totalSwap=$(free -m | awk 'NR==3 {print $2}');
usageSwap=$(free -m | awk 'NR==3 {print $3}');

# Calculating memory usage by using bc command, then print
memUsedPct=$(bc -l <<< $usageMem/$totalMem*100);
swapUsedPct=$(bc -l <<< $usageSwap/$totalSwap*100);
pctSign="%"; #In order to escape "%" symbol
printf 'Memory usage: %.1f %s\n' $memUsedPct $pctSign  
printf 'Swap memory usage: %.1f %s\n' $swapUsedPct $pctSign  


# If swap memory is being used while memory has enough space,
# initializing swap memory by turing it off and on
enoughMem=$(echo "$memUsedPct<30" | bc -l);
usingSwap=$(echo "$swapUsedPct>0" | bc -l);

if [ $enoughMem -eq 1 ] && [ $usingSwap -eq 1 ]; then
	echo "Unnecessary use of swap memory - initializing swap memory" 
	sudo swapoff -a && sudo swapon -a
fi


