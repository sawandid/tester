#!/bin/bash
clear
#color
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Loading..."
IZIN=$( curl https://raw.githubusercontent.com/sawandid/tester/main/name | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "[ ${green}INFO${NC} ] Permission Accepted..."
else
echo -e "[ ${green}INFO${red} ] Permission Denied!${NC}";
echo -e "[ ${green}INFO${NC} ] Please Contact Admin!!"
exit 0
fi
clear
echo -e "===============================" | lolcat
echo -e "     ⇱ Menu Cloud Manager ⇲ "        
echo -e "===============================" | lolcat
echo -e " 1}. Backup Data VPS"
echo -e " 2}. Restore Data VPS"
echo -e " 3}. Menu"
echo -e " 4}. Exit"
echo -e ""
echo -e ""
echo -e "===============================" | lolcat
read -p "    Select From Options [ 1 - 3 or [x] ] : " menu
echo -e "===============================" | lolcat
case $menu in
1)
backup
;;
2)
restore
;;
3)
menu
;;
4)
exit
;;
esac
