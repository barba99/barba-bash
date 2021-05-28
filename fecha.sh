#!/bin/bash
clear
_fecha=$(printf '%(%d/%m/%Y)T')
_hora=$(printf '%(%H:%M:%S:%p)T')
v="\033[1;32m"
c="\033[1;36m"
Ver="\033[1;31m"
fin="\033[0m"
echo -e "$v╔══════════╗╔════════════╗"
echo -e "$v║$c$_fecha$v║$v║$c$_hora$v ║"
echo -e "$v╚══════════╝╚════════════╝"
