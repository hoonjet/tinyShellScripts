#!/bin/bash
# Get the history of commands from bash_history
# Count number of times used for each command, then print sorted list

printf "COMMAND\tCOUNT\n";

cat ~/.bash_history \
| awk '{ list[$1]++; } 
END{	
for (i in list){
 printf("%s\t%d\n",i,list[i]);   
}
}' | sort -nrk 2 | head -5  

#sort -nrk 2: sort based on count (# of command used)
#head -5: print top 5 from the list
