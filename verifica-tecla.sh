#!/bin/bash
clear
echo -e "\033[1;36m"
read  -p  " Pulsa una tecla:"  tecla
case $tecla in
[a-z,A-Z]) echo -e "\033[1;33m Ha introducido una letra\033[0m" ;;
[0-9]) echo -e "\033[1;32m Ha introducido un numero\033[0m" ;;
*) echo -e  "\033[1;35m Ha introducido un caracter especial \033[0m" ;;
esac
sleep 


