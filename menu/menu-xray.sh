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
echo -e "        ⇱ XRAY | VMESS ⇲"
echo -e "===============================" | lolcat
echo -e " 1}.$green Create Account Vmess Websocket"
echo -e " 2}.$green Delete Account Vmess Websocket"
echo -e " 3}.$green Extending Account Vmess Active Life"
echo -e " 4}.$green Check User Login Vmess"
echo -e "===============================" | lolcat
echo -e "        ⇱ XRAY | VLESS ⇲"
echo -e "===============================" | lolcat
echo -e " 5}.$green Create Account Vless Websocket"
echo -e " 6}.$green Delete Account Vless Websocket"
echo -e " 7}.$green Extending Account Vless Active Life"
echo -e " 8}.$green Check User Login Vless"
echo -e " 9}.$green Back To Menu"
echo -e " x}.$red Exit"
echo -e ""
echo -e "===============================" | lolcat
echo -e "     Script By MakhlukVpn          "
echo -e "===============================" | lolcat
echo -e ""
echo -e ""
echo -e "===============================" | lolcat
read -p "  Select From Options [ 1 - 9 or [x] ] : " menu
echo -e "===============================" | lolcat
echo -e ""
case $menu in
1)
addvmess
;;
2)
delvmess
;;
3)
renewvmess
;;
4)
cekvmess
;;
5)
addvless
;;
6)
delvless
;;
7)
renewvless
;;
8)
cekvless
;;
9)
menu
;;
x)
exit
;;
esac
