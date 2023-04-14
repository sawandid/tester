#!/bin/bash
clear
#color
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Loading..."
IZIN=$( curl https://raw.githubusercontent.com/Annnjayy/sc/main/name | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "[ ${green}INFO${NC} ] Permission Accepted..."
else
echo -e "[ ${green}INFO${red} ] Permission Denied!${NC}";
echo -e "[ ${green}INFO${NC} ] Please Contact Admin!!"
echo -e "[ ${green}INFO${NC} ] WhatsApp : 087844547312"
echo -e "[ ${green}INFO${NC} ] Telegram : https://t.me/MakhlukVpn"
exit 0
fi
clear
echo -e ""
echo -e "===============================" | lolcat
echo -e "    ⇱ SSH & OpenVPN Menu ⇲      "  
echo -e "===============================" | lolcat
echo -e ""
echo -e " 1}.$green Create SSH & OpenVPN Account"
echo -e " 2}.$green Trial Account SSH & OpenVPN"
echo -e " 3}.$green Renew SSH & OpenVPN Account"
echo -e " 4}.$green Delete SSH & OpenVPN Account"
echo -e " 5}.$green Check User Login SSH & OpenVPN"
echo -e " 6}.$green List Member SSH & OpenVPN"
echo -e " 7}.$green Set up Autokill SSH"
echo -e " 8}.$green Cek Users Who Do Multi Login SSH"
echo -e " 9}.$green Back To Menu"
echo -e " x}.$red Exit"
echo -e ""
echo -e "===============================" | lolcat
echo -e "      Script By MakhlukVpn          "
echo -e "===============================" | lolcat
echo -e ""
echo -e ""
echo -e "===============================" | lolcat
read -p "  Please Input Number  [1-9 or [x] ] :  "  menu
echo -e "===============================" | lolcat
case $menu in
1)
usernew
;;
2)
trial
;;
3)
renew
;;
4)
delete
;;
5)
cek
;;
6)
member
;;
7)
autokill
;;
8)
ceklim
;;
9)
menu
;;
x)
exit
;;
esac
