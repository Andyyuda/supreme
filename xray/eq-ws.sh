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
export CHATID="1830342336"
export KEY="6320035110:AAE6otySdlNHPhKom2PNtp8yZn8X8rZS7LE"
export TIME="10"
export URL="https://api.telegram.org/bot$KEY/sendMessage"
clear
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
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/vmess/.vmess.db")
        if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
                clear
        echo -e "\033[35m━━━━━━━━━━━━━━━━━━━━━━क⊹⊱ꕥ⊰⊹क━━━━━━━━━━━━━━━━━━━━━━\e[0m"
        echo -e "           Edit Quota Vmess          \E[0m"
        echo -e "\033[35m━━━━━━━━━━━━━━━━━━━━━━क⊹⊱ꕥ⊰⊹क━━━━━━━━━━━━━━━━━━━━━━\e[0m"
                echo ""
                echo "You have no existing clients!"
                echo ""
                echo -e "\033[35m━━━━━━━━━━━━━━━━━━━━━━क⊹⊱ꕥ⊰⊹क━━━━━━━━━━━━━━━━━━━━━━\e[0m"
        echo ""
        read -n 1 -s -r -p "Press any key to back on menu"
        menu
        fi

        clear
        echo -e "\033[35m━━━━━━━━━━━━━━━━━━━━━━क⊹⊱ꕥ⊰⊹क━━━━━━━━━━━━━━━━━━━━━━\e[0m"
    echo -e "           Edit Quota Vmess          \E[0m"
    echo -e "\033[35m━━━━━━━━━━━━━━━━━━━━━━क⊹⊱ꕥ⊰⊹क━━━━━━━━━━━━━━━━━━━━━━\e[0m"
    echo ""
        grep -E "^### " "/etc/vmess/.vmess.db" | cut -d ' ' -f 2 | column -t | sort | uniq
    echo ""
    red "tap enter to go back"
    echo -e "\033[35m━━━━━━━━━━━━━━━━━━━━━━क⊹⊱ꕥ⊰⊹क━━━━━━━━━━━━━━━━━━━━━━\e[0m"
        read -rp "Input Username : " user
    if [ -z $user ]; then
    menu
    else
    read -p "Limit (Quota): " Quota
    echo -e "$[$Quota * 1024 * 1024 * 1024]" > /etc/vmess/${user}
    clear
    echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo " VMESS Account Was Successfully Edited"
    echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo ""
    echo " Client Name  : $user"
    echo " Quota Ready  : $Quota GB"
    echo ""
    echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo ""
    read -n 1 -s -r -p "Press any key to back on menu"
    menu
    fi
