#!/bin/bash
echo "Diga si o no:"
read VAR
if  [ "$VAR" = si ]; then
echo "Escribiste -si-"
elif [ "$VAR" = no ]; then
echo "Escribiste -no-"
elif [ "$VAR" = "" ]; then
echo "No puede dejarlo en blanco"
else
echo "Lo que escribió no se acepta"
fi
