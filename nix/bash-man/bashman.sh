if [ "$USER" != "compute" ]; then
    (cd $HOME/bundle/roaming/xmachine && git pull && git submodule update --init --recursive)
fi

NIXPS1=$PS1

source $HOME/bundle/roaming/xmachine/nix/xenv.sh


ROTC='\e[0;30;41m'
REGC='\e[0;30;42m'
SUDC='\e[0;30;43m'
DIRC='\e[30;104m'
ENDC='\e[0m'

ROTPS1="\[$ROTC\][\u]\[$ENDC\]-\[$DIRC\][\w]\[$ENDC\]\n\[$ROTC\]>\[$ENDC\]"
SUDPS1="\[$SUDC\][\u]\[$ENDC\]-\[$DIRC\][\w]\[$ENDC\]\n\[$SUDC\]>\[$ENDC\]"
REGPS1="\[$REGC\][\u]\[$ENDC\]-\[$DIRC\][\w]\[$ENDC\]\n\[$REGC\]>\[$ENDC\]"

if [ "$USER" = "root" ]; then
    PS1=$ROTPS1
elif [ "$USER" = "bikky" ]; then
    PS1=$SUDPS1
elif [ "$USER" = "compute" ]; then
    PS1=$REGPS1
else
    PS1=$NIXPS1
fi

