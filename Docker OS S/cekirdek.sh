#!/bin/bash

if [ -f /opt/selfitis/source.sh ]; then
    source /opt/selfitis/source.sh
fi


export PS1="\[\e[1;32m\][selfitis\[\e[0m\]@\[\e[1;34m\]\w\[\e[1;32m\]]# \[\e[0m\]"

# Karşılama 
clear
echo -e "\e[1;32m==================================================\e[0m"
echo -e "\e[1;32m                   DOCKER OS S                    \e[0m"
echo -e "\e[1;32m         [ NATIVE TAB & COLOR ENGAGED ]           \e[0m"
echo -e "\e[1;32m==================================================\e[0m"
