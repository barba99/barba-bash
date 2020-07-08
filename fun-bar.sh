bar () {
comando[0]="$1"
comando[1]="$2"
 (
[[ -e $HOME/fim ]] && rm $HOME/fim
${comando[0]} -y > /dev/null 2>&1
${comando[1]} -y > /dev/null 2>&1
touch $HOME/fim
 ) > /dev/null 2>&1 &
echo -ne "\033[1;32m ["
while true; do
   for((i=0; i<13; i++)); do
   echo -ne "\033[1;39m■■"
   sleep 0.1s
   done
   [[ -e $HOME/fim ]] && rm $HOME/fim && break
   echo -e "\033[1;32m]"
   sleep 1s
   tput cuu1
   tput dl1
   echo -ne "\033[1;32m ["
done
echo -e "\033[1;32m]\033[1;33m -\033[1;36m 100%\e[0m"
}
bar 'pkg install figlet -y'
