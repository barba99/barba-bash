#!/bin/bash
fun_bar () {
comando[0]="$1"
comando[1]="$2"
 (
[[ -e fim ]] && rm fim
${comando[0]} -y > /dev/null 2>&1
${comando[1]} -y > /dev/null 2>&1
touch $HOME/fim
 ) > /dev/null 2>&1 &
sp="/-\|"
unset a
while [[ ! -e $HOME/fim ]]; do
  for((i=0; i<5; i++)); do
    echo -ne "\033[1;33m ["
    a+="#"
    echo -ne "\033[1;31m${a}"
    echo -ne "\033[1;33m]"
    echo -ne " - \033[1;33m[\033[1;32m"
    echo -ne "${sp:i%${#sp}:1}"
    echo -e "\033[1;33m]"
    sleep 1
    tput cuu1
    tput dl1
  done
done
echo -e " \033[1;33m[\033[1;31m${a}\033[1;33m] - \033[1;33m[\033[1;32m100%\033[1;33m]\033[0m"
rm fim
}
clear
echo -e "instalando"
fun_bar 'apt install git'
