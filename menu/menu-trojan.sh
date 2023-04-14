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
echo -e "===============================" | lolcat
echo -e "  ⇱ Menu Xray | Trojan GFW ⇲"
echo -e "===============================" | lolcat
echo -e " 1}.$green Create Account Trojan GFW "
echo -e " 2}.$green Delete Account Trojan GFW "
echo -e " 3}.$green Renew Account Trojan GFW "
echo -e " 4}.$green Check User Login Trojan GFW "
echo -e "===============================" | lolcat
echo -e "  ⇱ Menu Xray | Trojan GO ⇲"
echo -e "===============================" | lolcat
echo -e " 5}.$green Create Account Trojan Go"
echo -e " 6}.$green Delete Account Trojan Go"
echo -e " 7}.$green Renew Account Trojan Go"
echo -e " 8}.$green Check User Login Trojan Go"
echo -e " 9}.$green Back To Menu"
echo -e " x}.$red Exit"
echo -e "===============================" | lolcat
echo -e "      Script By MakhlukVpn          "
echo -e "===============================" | lolcat
echo -e ""
echo -e ""
echo -e "===============================" | lolcat
read -p "  Select From Options [ 1 - 5 or [x]  ] : " menu
echo -e "===============================" | lolcat
echo -e ""
case $menu in
1)
addtrojan
;;
2)
deltrojan
;;
3)
renewtrojan
;;
4)
cektrojan
;;
5)
addtrgo
;;
6)
deltrgo
;;
7)
renewtrgo
;;
4)
cektrgo
;;
9)
menu
;;
x)
exit
;;
esac
