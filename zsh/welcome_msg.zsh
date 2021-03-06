# Define a few Color's
BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
PURPLE='\e[0;35m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
IGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
NC='\e[0m'              # No Color

# SPECIAL FUNCTIONS
#######################################################
netinfo ()
{
    echo "--------------- Network Information ---------------"
    /sbin/ifconfig -a | awk /'inet addr/ {print $2}'
    /sbin/ifconfig -a | awk /'Bcast/ {print $3}'
    /sbin/ifconfig -a | awk /'HWaddr/ {print $4,$5}'
    echo "---------------------------------------------------"
}

spin ()
{
    echo -ne "${RED}-"
    echo -ne "${WHITE}\b|"
    echo -ne "${BLUE}\bx"
    sleep .02
    echo -ne "${RED}\b+${NC}"
}

scpsend ()
{
    scp -P PORTNUMBERHERE "$@" USERNAME@YOURWEBSITE.com:/var/www/html/pathtodirectoryonremoteserver/;
}

# WELCOME SCREEN
#######################################################
if [[ ! -n "$STY" ]]; then
	clear
	for i in `seq 1 15` ; do spin; done ;echo -ne "${WHITE} Great things take time. ${NC}"; for i in `seq 1 15` ; do spin; done ;echo "";
	echo -e "Kernel Information: " `uname -smr`;
	echo -e ${LIGHTBLUE}`zsh --version`;echo ""
	echo -ne "Hello $USER today is "; date
	if [[ "`uname`" == "Linux" ]]; then
	    echo -e "${WHITE}"; cal ; echo "";
	    echo -ne "${CYAN}";netinfo;
	fi
	echo -ne "${NC}";screen -ls
	echo -ne "${NC}Uptime for this computer is ";uptime | awk /'up/ {print $3,$4}';
fi
