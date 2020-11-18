#!bin/bash
declare -A cor=( [0]="\e[0m" [1]="\033[1;31m" [2]="\033[1;32m" [3]="\033[1;33m" [4]="\033[1;34m"  [5]="\033[1;35m"  [6]="\033[1;36m" [7]="\033[1;37m")
ip=$(wget -qO- ipv4.icanhazip.com)
link=$(echo "http://ip-api.com/json $ip")
data=$(curl $link -s) # -s for slient output
status=$(echo $data | jq '.status' -r)

if [[ $status == "success" ]]; then
        city=$(echo $data | jq '.city' -r)
        regionName=$(echo $data | jq '.regionName' -r)
        country=$(echo $data | jq '.country' -r)
        zip=$(echo $data | jq '.zip' -r)
        time=$(echo $data | jq '.timezone' -r)
        echo -e "${cor[2]} SU IP  ${cor[3]} $ip"
        echo -e "${cor[2]} pais   ${cor[3]} $country"
        echo -e "${cor[2]} ciudad ${cor[3]} $city"
        echo -e "${cor[2]} región ${cor[3]} $regionName"
        echo -e "${cor[2]} Código Postal ${cor[3]} $zip"
        echo -e "${cor[2]} zona horaria  ${cor[3]} $time ${cor[0]}"
fi
