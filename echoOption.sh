#!/bin/bash
# check echo \033["N"m style option
# Sweep from \033[0m to \033 60m, records everything that has an effect


# Style 
echo -e "\033[0m Default" #Default
echo -e "\033[1m Bold \033[0m" #Bold effect
echo -e "\033[3m Italic \033[0m" #Italic
echo -e "\033[53m upperline \033[0m" #upperline
echo -e "\033[4m Underline \033[0m" #Underline
echo -e "\033[5m Blink \033[0m " #Blink
echo -e "\033[7m Reverse \033[0m" #Reverse (Letter <-> background)
echo -e "\033[9m Strike \033[0m" #Strike
echo -e "\033[21m double underline \033[0m" #double underline


# Font color [\033[31m - \033[40m
echo -e "\033[31m Red \033[0m" # Font color: Red 
echo -e "\033[32m Green \033[0m" #Font color: Green 
echo -e "\033[33m Yellow \033[0m" #Font color: Yellow
echo -e "\033[34m Blue \033[0m" #Font color: Blue
echo -e "\033[35m Purple \033[0m" #Font color: Purple
echo -e "\033[36m Cyan \033[0m" #Font color: Cyan
echo -e "\033[37m Gray \033[0m" #Font color: Gray


# Background color [\033[41m - \033[50m
echo -e "\033[41m Background: Red \033[0m" #Background color: Red
echo -e "\033[42m Background: Green \033[0m" #Background color: Green
echo -e "\033[43m Background: Yellow \033[0m" #Background color: Yellow
echo -e "\033[44m Background: Blue \033[0m" #Background color: Blue
echo -e "\033[45m Background: Purple \033[0m" #Background color: Purple
echo -e "\033[46m Background: Cyan \033[0m" #Background color: Cyan
echo -e "\033[47m Background: Gray \033[0m" #Background color: Gray


