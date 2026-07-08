#
# ~/.bashrc
#

HISTSIZE=1000000
HISTFILESIZE=100000000
HISTCONTROL=ignoredups

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
	if [[ -n "${PATH_ULR}" ]] && \
		[[ -n "${PKG_CONFIG_PATH_ULR}" ]] && \
		[[ -n "${PYTHONPATH_ULR}" ]]; then
		return 0
	fi
	source_by_session path.sh
	return $?
}

set_xdg_env_if_not_set() {
	source_by_session xdg.sh
	return $?
}

set_homes_if_not_set() {
	source_by_session homes.sh
	return $?
}

main() {
	alias claer=clear
	alias ls='ls --color'
	alias grep='grep --color=auto'
	alias py=python
	if [[ "$(uname)" == "Linux" ]]; then
		alias open='xdg-open'
	fi
	alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT1'

	local filepath=
	set_xdg_env_if_not_set
	if ! [ $? -eq 0 ]; then
		echo "$filepath does not exist!"
	fi
	# path_ulr depends on environment variables set in homes.sh, so it must be run first
	set_homes_if_not_set
	if ! [ $? -eq 0 ]; then
		echo "$filepath does not exist!"
	fi
	path_ulr
	if ! [ $? -eq 0 ]; then
		echo "$filepath does not exist!"
	fi
}

main

