#!bin/bash
P_SERVER="https://raw.githubusercontent.com/barba99/barba-bash/master/versionpanel"
v11=$(curl -sSL "${P_SERVER}")
v22=$(cat versionpanel)
[[ $v11 = $v22 ]] && vesaoSCT="\033[1;32mbarba-bash \033[1;31m[\033[1;97mv$v11\033[1;31m] \033[1;97m#OFICIAL ®️ ️\033[1;31m]" || vesaoSCT="\033[1;36mbarba-bash \033[1;33m(v$v22) \033[1;31m► \033[1;32mNUEVA VERSION DISPONIBLE \033[1;31m[\033[1;97mv$v11\033[1;31m]"
echo -e "\033[0;32m ${vesaoSCT} \033[0m"
