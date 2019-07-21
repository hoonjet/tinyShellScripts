#!/bin/bash

if [ "$EUID" -ne 0 ];then #EUID is 0 for root
  echo "You are not root"  
  exit
else
  echo "You are root"
  exit
fi

