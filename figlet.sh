menu_func () {
local options=${#@}
local array
for((num=01; num<=$options; num++)); do
echo -ne "\033[1;31m[\033[1;32m$num\033[1;31m]\033[0m"
  array=(${!num})
  case ${array[0]} in
    "-vd")echo -ne  "${array[@]:1}" | sed ':a;N;$!ba;s/\n/ /g';;
    "-vm")echo -ne  "${array[@]:1}" | sed ':a;N;$!ba;s/\n/ /g';;
    "-fi")echo -ne  "${array[@]:2} ${array[1]}" | sed ':a;N;$!ba;s/\n/ /g';;
    *)echo -e  "${array[@]}" | sed ':a;N;$!ba;s/\n/ /g';;
  esac
done
}
clear
echo -ne "\033[1;37mEscriba su Nombre: " >&2
read barba
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ | lolcat -t  -F  -d 99 -S
menu_func "banner" "big" "block" "bubble" "digital" "ivrit"  "lean" "mini" "mnemonic" "script" "shadow"  "slant" "small" "smscript" "smshadow" "smslant" "standard" "term"
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ | lolcat -t  -F  -d 99 -S
echo -ne "\033[1;37mSeleccione una Opcion: " >&2
read selection
case ${selection} in
1)figlet -f banner $barba ;;
2)figlet -f big $barba ;;
3)figlet -f block $barba ;;
4)figlet -f bubble $barba ;;
5)figlet -f digital $barba ;;
6)figlet -f ivrit $barba ;;
7)figlet -f lean $barba ;;
8)figlet -f mini $barba ;;
9)figlet -f mnemonic $barba ;;
10)figlet -f script $barba ;;
11)figlet -f shadow $barba ;;
12)figlet -f slant $barba ;;
13)figlet -f small $barba ;;
14)figlet -f smscript $barba ;;
15)figlet -f smshadow $barba ;;
16)figlet -f smslant $barba ;;
17)figlet -f standard $barba ;;
18)figlet -f term $barba ;;
esac
