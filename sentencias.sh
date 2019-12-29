if
[[ -e /data/data/com.termux/files/usr/bin/fakeroot ]]  &&  fakeroot="\033[1;31m✓\033[00m"
then
echo -e "\033[1;36mfakeroot $fakeroot\033[00m"
else
echo -ne "\033[1;33m [ ! ] \033[1;33minstalando fakeroot \033[1;37m"
pkg install fakeroot -y >/dev/null 2>&1 && echo -e "\033[1;32m [OK]\033[00m"
fi
