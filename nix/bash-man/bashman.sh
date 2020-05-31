XUR="kroy"

if [ "$USER" != $XUR ]; then
    (cd $HOME/b/roaming/xmachine && git pull && git submodule update --init --recursive)
fi

NIXPS1=$PS1

source $HOME/b/roaming/xmachine/nix/xenv.sh


ROTC='\e[0;30;41m'
REGC='\e[0;30;42m'
SUDC='\e[0;30;43m'
OFFC='\e[0;97;100m'
DIRC='\e[30;104m'
ENDC='\e[0m'

ROTPS1="\[$ROTC\][\u]\[$ENDC\]-\[$DIRC\][\w]\[$ENDC\]\n\[$ROTC\]>\[$ENDC\]"
SUDPS1="\[$SUDC\][\u]\[$ENDC\]-\[$DIRC\][\w]\[$ENDC\]\n\[$SUDC\]>\[$ENDC\]"
REGPS1="\[$REGC\][\u]\[$ENDC\]-\[$DIRC\][\w]\[$ENDC\]\n\[$REGC\]>\[$ENDC\]"
OFFPS1="\[$OFFC\][\u]\[$ENDC\]-\[$DIRC\][\w]\[$ENDC\]\n\[$OFFC\]>\[$ENDC\]"

if [ "$USER" = "root" ]; then
    PS1=$ROTPS1
elif [ "$USER" = "bikky" ]; then
    PS1=$SUDPS1
elif [ "$USER" = "compute" ]; then
    PS1=$REGPS1
elif [ "$USER" = "kroy" ]; then
    PS1=$OFFPS1
else
    PS1=$NIXPS1
fi

