#!/bin/bash
# cor
b="\033[1;37m"
v="\033[1;33m"
m="\033[1;32m"
n="\033[1;31m"
O="\033[1;36m"
f="\033[0m"
barra="echo -e \033[0;34m∞=∞=∞=∞=∞=∞=∞=∞=∞=∞=∞=∞=∞=∞=∞=∞=∞=∞=∞=∞=∞=∞=∞\033[0m"
clear
$barra
echo -e "$v[ $b 1 $v ]$n ° $m SUMA"
echo -e "$v[ $b 2 $v ]$n ° $m RESTA"
echo -e "$v[ $b 3 $v ]$n ° $m MULTIPLICACION"
echo -e "$v[ $b 4 $v ]$n ° $m DIVISION"
echo -e "$v[ $b 0 $v ]$n ° $m [VOLVER] "
$barra $O
read  -p "Introduce una opcion: " opcion
case $opcion in
1) read -p "Introduce el 1 numero: " numero1
read -p "Introduce el 2 numero: " numero2
echo "El resultado es = `expr $numero1 + $numero2`"
sleep 4
source calculadora ;;
2) read -p "Introduce el 1 numero: " numero1
read -p "Introduce el 2 numero: " numero2
echo "El resultado es = `expr $numero1 - $numero2`"
sleep 4
source calculadora ;;
3) read -p "Introduce el 1 numero: " numero1
read -p "Introduce el 2 numero: " numero2
echo "El resultado es = `expr $numero1 '*' $numero2`"
sleep 4
source calculadora ;;
4) read -p "Introduce el 1 numero: " numero1
read -p "Introduce el 2 numero: " numero2
echo "El resultado es = `expr $numero1 '/' $numero2`"
sleep 4
source calculadora ;;
0) sleep 4
source menu ;;
*)echo -e  "$n OPCION NO VALIDA $f"
sleep 4
source calculadora ;;
esac
