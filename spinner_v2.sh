#!/usr/bin/env bash
spin(){
width=40
perc=0
speed="0.06" # seconds
inc="$(echo "100/${width}" | bc -ql)"

echo -n "Instalando.. 0% "

while [ $width -ge 0 ]; do
	printf "\e[0;93;103m%s\e[0m %.0f%%" "0" "${perc}"
	sleep $speed
	let width--
	perc="$(echo "${perc}+${inc}" | bc -ql)"

	if [ ${perc%%.*} -lt 10 ]; then
		printf "\b\b\b"
	else
		printf "\b\b\b\b"
	fi
done
echo
}
if
[[ -e /data/data/com.termux/files/usr/bin/python2 ]] &&  python2="$ok"
then
echo -e "\033[0;32mpython2 \033[0;33m >> \033[0;31m[\033[0;36mInstalado\033[0;31m]\033[0m"
else
echo -e "\033[0;31m[\033[0;33m~\033[0;31m]\033[0;36minstalando\033[0;33m >>\033[0;37m python2"
pkg install python2 -y  &> /dev/null & spin
fi
