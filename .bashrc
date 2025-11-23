#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='[\u@\h \W]\$'
PS1='\e[32m\u\e[38;5;28m@\e[32m\h:\e[36m$PWD:~\e[37m\$ '

path_ulr() {
	if [[ -z "${PATH_ULR}" ]]; then
		return
	fi
	filepath=$HOME/Software/1/dotfiles/path.sh
	if [[ -z "$XDG_SESSION_DESKTOP" ]]; then
		if [[ "$XDG_SESSION_DESKTOP" == "KDE" ]]; then
			filepath=$HOME/.config/plasma-workspace/env/path.sh
		fi
	fi
	if [[ -f "$filepath" ]]; then
		source $filepath
	fi
}

path_ulr

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias mvn='ln -sf /tmp/m2 $HOME/.m2; mkdir -p /tmp/m2; mvn'

