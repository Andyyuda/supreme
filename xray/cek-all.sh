#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/Andyyuda/permission/main/ip"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/Jengkol_Online"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6282372139631"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
clear
echo -n > /tmp/other.txt
data=( `cat /etc/xray/config.json | grep '^#&@' | cut -d ' ' -f 2 | sort | uniq`);
echo -e "\033[35m━━━━━━━━━━━━━━━━━━━━━━क⊹⊱ꕥ⊰⊹क━━━━━━━━━━━━━━━━━━━━━━\e[0m"
echo -e "\E[0;100;33m                    • All User Online •                     \E[0m"
echo -e "\033[35m━━━━━━━━━━━━━━━━━━━━━━क⊹⊱ꕥ⊰⊹क━━━━━━━━━━━━━━━━━━━━━━\e[0m"
echo -e "\033[35m━━━━━━━━━━━━━━━━━━━━━━क⊹⊱ꕥ⊰⊹क━━━━━━━━━━━━━━━━━━━━━━\e[0m"
for akun in "${data[@]}"
do
if [[ -z "$akun" ]]; then
akun="tidakada"
fi
echo -n > /tmp/ipvmess.txt
data2=( `cat /var/log/xray/access.log | tail -n 500 | cut -d " " -f 3 | sed 's/tcp://g' | cut -d ":" -f 1 | sort | uniq`);
for ip in "${data2[@]}"
do
jum=$(cat /var/log/xray/access.log | grep -w "$akun" | tail -n 500 | cut -d " " -f 3 | sed 's/tcp://g' | cut -d ":" -f 1 | grep -w "$ip" | sort | uniq)
if [[ "$jum" = "$ip" ]]; then
echo "$jum" >> /tmp/ipvmess.txt
else
echo "$ip" >> /tmp/other.txt
fi
jum2=$(cat /tmp/ipvmess.txt)
sed -i "/$jum2/d" /tmp/other.txt > /dev/null 2>&1
done
jum=$(cat /tmp/ipvmess.txt)
if [[ -z "$jum" ]]; then
echo > /dev/null
else
jum2=$(cat /tmp/ipvmess.txt | nl)
echo "user online : $akun";
echo "$jum2";
echo -e "\033[35m━━━━━━━━━━━━━━━━━━━━━━क⊹⊱ꕥ⊰⊹क━━━━━━━━━━━━━━━━━━━━━━\e[0m"
fi
rm -rf /tmp/ipvmess.txt
done
#oth=$(cat /tmp/other.txt | sort | uniq | nl)
#echo "Jumlah User IP";
#echo "$oth";
#echo -e "\033[35m━━━━━━━━━━━━━━━━━━━━━━क⊹⊱ꕥ⊰⊹क━━━━━━━━━━━━━━━━━━━━━━\e[0m"
#rm -rf /tmp/other.txt
read -n 1 -s -r -p "Press any key to back on menu"
menu
