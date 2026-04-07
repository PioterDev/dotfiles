#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='[\u@\h \W]\$'
PS1='\e[32m\u\e[38;5;28m@\e[32m\h:\e[36m$PWD:~\e[37m\$ '

# https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html
set -b

terminate-bg() {
	if [ -z "$(jobs)" ]; then
		echo "No job to terminate"
		return 0
	fi
	local pid=$(jobs -p %+)
	local job=($(jobs %+))
	local state=${job[1]}
	# local cmd=${job[@]:2}
	if [ "$state" = "Stopped" ]; then printf "Resuming "; fi
	kill $pid
	fg
	return 0
}
bind -x '"\C-t": terminate-bg'

# TODO: see .zshrc
source_by_session() {
	filepath=$HOME/Software/1/dotfiles/$1 # default for no session
	if [[ -n "$XDG_SESSION_DESKTOP" ]]; then
		if [[ "$XDG_SESSION_DESKTOP" == "KDE" ]]; then
			filepath=$HOME/.config/plasma-workspace/env/$1
		fi
	fi
	if [[ -f "$filepath" ]]; then
		source $filepath
		return 0
	fi
	return 1
}

path_ulr() {
	if [[ -n "${PATH_ULR}" ]]; then
		return 0
	fi
	source_by_session path.sh
	return $?
}

set_xdg_env_if_not_set() {
	source_by_session xdg.sh
	return $?
}

main() {
	alias ls='ls --color'
	alias grep='grep --color=auto'
	if [[ "$(uname)" == "Linux" ]]; then
		alias open='xdg-open'
	fi
	alias mvn='ln -sf /tmp/m2 $HOME/.m2; mkdir -p /tmp/m2; mvn'

	local filepath=
	set_xdg_env_if_not_set
	if ! [ $? -eq 0 ]; then
		echo "$filepath does not exist!"
	else
		export RLWRAP_HOME=$XDG_STATE_HOME/rlwrap
	fi
	path_ulr
	if ! [ $? -eq 0 ]; then
		echo "$filepath does not exist!"
	fi
}

main

