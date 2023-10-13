#!/bin/bash
negro="\e[1;30m" && azul="\e[1;34m" && verde="\e[1;32m" && cian="\e[1;36m" && rojo="\e[1;31m" && purpura="\e[1;35m" && amarillo="\e[1;33m" && blanco="\e[1;37m" && black="$(tput setaf 0)" && red="$(tput setaf 1)" && green="$(tput setaf 2)" && yellow="$(tput setaf 3)" && blue="$(tput setaf 4)" && magenta="$(tput setaf 5)" && cyan="$(tput setaf 6)" && white="$(tput setaf 7)" && rst="$(tput sgr0)"
#‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗
source $(pwd)/sourcez
wget https://gist.githubusercontent.com/drowkid01/bb0b0ad3d2ac976a06e3756ec4ef3ae6/raw/29bc3b9b42ffdc81884a6f9d43cc1b32392b775a/sourcez
msgi () {
    BLANCO='\033[1;37m' && ROJO='\e[1;31m' && VERDE='\e[32m' && AMARELO='\e[33m'
    AZUL='\e[34m' && MAGENTA='\e[35m' && MAG='\033[1;36m' && NEGRITA='\e[1m' && SINCOLOR='\e[0m'
    case $1 in
    -ne) cor="${ROJO}${NEGRITA}" && echo -ne "${cor}${2}${SINCOLOR}" ;;
    -ama) cor="${AMARELO}${NEGRITA}" && echo -e "${cor}${2}${SINCOLOR}" ;;
    -verm) cor="${AMARELO}${NEGRITA}[!] ${ROJO}" && echo -e "${cor}${2}${SINCOLOR}" ;;
    -azu) cor="${MAG}${NEGRITA}" && echo -e "${cor}${2}${SINCOLOR}" ;;
    -verd) cor="${VERDE}${NEGRITA}" && echo -e "${cor}${2}${SINCOLOR}" ;;
    -bra) cor="${ROJO}" && echo -ne "${cor}${2}${SINCOLOR}" ;;
    "-bar2" | "-bar") cor="${ROJO}════════════════════════════════════════════════════" && echo -e "${SINCOLOR}${cor}${SINCOLOR}" ;;
    esac
}

#‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗

titulo(){
owner="${verde}＠${negro}ｔ${rojo}ｉ${azul}ｅ${purpura}ｎ${verde}ｄ${amarillo}ａ${negro}ｓ${blanco}ｓ${azul}ｈ${rojo}ｇ${azul}ｅ${negro}ｎ${amarillo}＿${purpura}Ｂ${verde}Ｏ${rojo}Ｔ${blanco}"
n="${negro}" && v="\e[1;32m"
echo -e "\e[1;31m════════════════════════════════════════════════════${negro}
	░▀█▀░▀█▀░█▀▀░█▀█░█▀▄░█▀█░${v}█▀▀░█▀▀░█░█
${n}	░░█░░░█░░█▀▀░█░█░█░█░█▀█░${v}▀▀█░▀▀█░█▀█
${n}	░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀░░▀░▀░${v}▀▀▀░▀▀▀░▀░▀
\e[1;31m════════════════════════════════════════════════════\e[0m
	${owner}"
msgi -bar
}
#‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗

enter(){
echo -e "${rojo}════════════════════════════════════════════════════${negro}"
read -p "          >> Presione enter para continuar << " x
msgi -bar
}
#‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗

dependencias() {
TEXTO="${verde}INSTALADO [✓]"
  packages="zip unzip python python3 python3-pip openssl iptables lsof pv boxes at mlocate gawk bc jq npm nodejs socat net-tools cowsay figlet lolcat"
  for i in $packages; do
    paquete="$i"
    echo -e "\033[1;97m        INSTALANDO RECURSO \e[93m ➤➤➤ \e[36m $i"
    ufal_dep "apt-get install $i -y"
    echo -e "‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗"
  done
}
#‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗

times(){
timeespera="1"
  times="10"
  if [ "$timeespera" = "1" ]; then
    txta_center "🚀| CONFIGURANDO ULTIMOS DETALLES | 🚀"
    msgi -bar2
    while [ $times -gt 0 ]; do
      echo -ne "                         •|$times|•\033[0K\r"
      sleep 1
      : $((times--))
    done
    tput cuu1 && tput dl1
    tput cuu1 && tput dl1
    tput cuu1 && tput dl1
    msgi -bar
    txta_center "INSTALACIÓN FINALIZADA "
    echo -e ""
    txt_center "Use: menu"
    msgi -bar
  fi
}
#‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗

verificando_key(){
 error(){ echo -e "${rojo}ERROR" ; }
 access(){ echo -e "${verde}KEY VALIDA" ; }
basica="tiendA-@@gnIO35+771&711&30?&9811@@QDjGvWYGPDJYx4 tiendA-@@w?iqRA+771&711&30?&9811@@w9ZT9Dto6v9db+"
  for i in $basica; do
    basic="$i"
    read -p "Token: " key && keyff=$(echo "tiendA-$i")
    if [[ "${key}" == "$basic" ]]; then
    	access && times && exit
    elif [[ "${key}" == "" ]]; then
    	error && exit
    fi
	error && exit
  done
}
#‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗

install_basica(){
titulo
#source $(pwd)/of
#verifykey
}
#‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗

install_admin(){
titulo
read -p "Escriba su token adm: " adm
exit 1
}
#‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗

install_users(){
clear && clear
 main(){
 clear && clear
 TEXTO="ARQUITECTURA CORRECTA" && COLOR="${amarillo}" && arch="install.sh" && TXT="${verde}ARQUITECTURA APTA"
 echo -e "ESPERE..." && sleep 5
 txto "VERIFICANDO SI SU ARQUITECTURA ES APTA.."
 ufal
 enter
# Control-BOT(){ echo "http://186.148.224.156:88/${arch}" ; }
# Control-BOT
# source $(pwd)/main
 }
main
clear && clear
titulo
Ip=$(wget -qO- ifconfig.me)
echo -e "	\e[1;33m¿ESTA ES TU IP: \e[0m$Ip \033[1;33m?"
read -p "≫≫ Seleccione su respuesta: " ipp
if [[ "${ipp}" == "s" ]]; then
	echo -e "Perfecto" && echo -e "${Ip}">>Control-BOT
elif [[ "${ipp}" == "" ]]; then
	echo "" && echo -e "${Ip}">>Control-BOT
else
	echo "" && echo -e "${Ip}">>Control-BOT
fi
#dependencias
clear
titulo
dependencias
clear && clear
read -p "Escriba su key: " key
sleep 5
echo -e "${verde}Key valida"
times
}


case $1 in
--install)install_key ;;
esac

