#!/bin/bash

 
ALERT=90 # Threshold percentage 
used=$(df -h /boot | grep -vE '^Filesystem' | awk '{ print $5 }' | cut -d'%' -f1);
if [ $used -ge $ALERT ]; then

   echo "/boot is almost full: $used% running autoremove utility" 
   sudo apt-get autoremove -y # Running autoremove (for Ubuntu); comment this out if you don't want to run this utility

else

   echo "/boot is $used% full - Still have enough space"


fi


exit 0
