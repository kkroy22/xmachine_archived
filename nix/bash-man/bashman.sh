if [ "$USER" != "compute" ]; then
    (cd $HOME/bundle/roaming/xmachine && git pull && git submodule update --init --recursive)
fi

NIXPS1=$PS1

source $HOME/bundle/roaming/xmachine/nix/xenv.sh

ROT='\e[0;30;41m[\u]\e[0m-\e[30;104m[\w]\e[0m\n\e[30;41m>\e[0m'
REG='\e[0;30;42m[\u]\e[0m-\e[30;104m[\w]\e[0m\n\e[30;42m>\e[0m'
SUD='\e[0;30;43m[\u]\e[0m-\e[30;104m[\w]\e[0m\n\e[30;43m>\e[0m'

if [ "$USER" = "root" ]; then
    PS1=$ROT
elif [ "$USER" = "bikky" ]; then
    PS1=$SUD
elif [ "$USER" = "compute" ]; then
    PS1=$REG
else
    PS1=$NIXPS1
fi

if command -v tmux>/dev/null; then
	[ -z $TMUX ] && exec tmux
else 
	echo "Hello from the other side"
fi

