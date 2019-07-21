#!/bin/bash
start=$SECONDS
seconds=$((SECONDS-start))

setTime=10 #Wating time in seconds

while [ $seconds -lt $setTime ]; do 
   seconds=$((SECONDS-start))
done

echo $seconds "second(s) have passed. Terminating..."
