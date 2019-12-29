#!/bin/bash
#  Script BASH de Ejemplo de MENU
clear
echo "----------MENU DE OPCIONES----------"
echo ""
PS3='Ingrese su opcion a ejecutar : '
options=("Opcion Nro. 1" "Opcion Nro. 2" "Opcion Nro. 3" "Salir")
select opt in "${options[@]}"
do
    case $opt in
        "Opcion Nro. 1")
            echo "A elegido la opcion 1"
            ;;
        "Opcion Nro. 2")
            echo "A elegido la opcion 2"
            ;;
        "Opcion Nro. 3")
            echo "A elegido la opcion 3"
            ;;
        "Salir")
            break
            ;;
        *) echo invalid option;;
    esac
done
