#!/bin/bash
clear
# Color
RED='\033[0;31m'
NC='\033[0m'
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);

if [ -e "/var/log/auth.log" ]; then
        LOG="/var/log/auth.log";
fi
if [ -e "/var/log/secure" ]; then
        LOG="/var/log/secure";
fi

data=( `ps aux | grep -i dropbear | awk '{print $2}'`);
echo "=======[ Dropbear User Login ]========" | lolcat
echo "  ID  |  Username  |  IP Address"
echo "======================================" | lolcat
cat $LOG | grep -i dropbear | grep -i "Password auth succeeded" > /tmp/login-db.txt;
for PID in "${data[@]}"
do
        cat /tmp/login-db.txt | grep "dropbear\[$PID\]" > /tmp/login-db-pid.txt;
        NUM=`cat /tmp/login-db-pid.txt | wc -l`;
        USER=`cat /tmp/login-db-pid.txt | awk '{print $10}'`;
        IP=`cat /tmp/login-db-pid.txt | awk '{print $12}'`;
        if [ $NUM -eq 1 ]; then
                echo "$PID - $USER - $IP";
                fi
done
echo " "
echo "========[ OpenSSH User Login ]========"| lolcat
echo "   ID  |  Username  |  IP Address"
echo "======================================" | lolcat
cat $LOG | grep -i sshd | grep -i "Accepted password for" > /tmp/login-db.txt
data=( `ps aux | grep "\[priv\]" | sort -k 72 | awk '{print $2}'`);

for PID in "${data[@]}"
do
        cat /tmp/login-db.txt | grep "sshd\[$PID\]" > /tmp/login-db-pid.txt;
        NUM=`cat /tmp/login-db-pid.txt | wc -l`;
        USER=`cat /tmp/login-db-pid.txt | awk '{print $9}'`;
        IP=`cat /tmp/login-db-pid.txt | awk '{print $11}'`;
        if [ $NUM -eq 1 ]; then
                echo "$PID - $USER - $IP";
        fi
done
if [ -f "/etc/openvpn/server/openvpn-tcp.log" ]; then
echo ""
echo "======[ OpenVPN TCP User Login ]=======" | lolcat
echo "   Username  |  IP Address  |  Connected"
echo "=======================================" | lolcat
        cat /etc/openvpn/server/openvpn-tcp.log | grep -w "^CLIENT_LIST" | cut -d ',' -f 2,3,8 | sed -e 's/,/      /g' > /tmp/vpn-login-tcp.txt
        cat /tmp/vpn-login-tcp.txt
fi

if [ -f "/etc/openvpn/server/openvpn-udp.log" ]; then
echo " "
echo "======[ OpenVPN UDP User Login ]=====" | lolcat
echo "   Username  |  IP Address  |  Connected"
echo "======================================" | lolcat
        cat /etc/openvpn/server/openvpn-udp.log | grep -w "^CLIENT_LIST" | cut -d ',' -f 2,3,8 | sed -e 's/,/      /g' > /tmp/vpn-login-udp.txt
        cat /tmp/vpn-login-udp.txt
fi
echo " "
echo "======================================" | lolcat
echo "        Script By MakhlukVpn"
echo "======================================" | lolcat

read -n 1 -s -r -p "Press [ Enter ] to back on menu"

menu
