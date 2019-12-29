#!bin/bash
HORA=`date | cut -c12-13 | tr -d ' '`
if expr "$HORA" \<= 5 > /dev/null
then
  echo -e "\033[1;33m BUENAS NOCHES\033[00m"
elif expr "$HORA" \<= 12 > /dev/null
then
  echo -e "\033[1;33m BUENOS DIAS\033[00m"
elif expr "$HORA" \<= 19 > /dev/null
then
  echo -e "\033[1;33m BUENAS TARDES\033[00m"
elif expr "$HORA" \<= 24 > /dev/null
then
  echo -e "\033[1;33m BUENAS NOCHES\033[00m"
fi
