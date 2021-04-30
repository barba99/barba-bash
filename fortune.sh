#!bin/bash
[[ ! -e texto.txt ]] ; rm -irf texto.txt
#borra el archivo txt para que nose dublique
fortune >> texto.txt
#genera galleta de la fortuna y la envia a texto.txt
trans en:es -b -i texto.txt  -o texto.txt
#traduce el archivo texto de ingles a español
cat  texto.txt
#imprime el resultado de la traduccion
