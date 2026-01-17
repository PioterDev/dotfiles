#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='[\u@\h \W]\$'
PS1='\e[32m\u\e[38;5;28m@\e[32m\h:\e[36m$PWD:~\e[37m\$ '

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

set_homes_if_not_set() {
	source_by_session homes.sh
	return $?
}

main() {
	alias ls='ls --color'
	alias grep='grep --color=auto'
	alias py=python
	if [[ "$(uname)" == "Linux" ]]; then
		alias open='xdg-open'
	fi

	local filepath=
	set_xdg_env_if_not_set
	if ! [ $? -eq 0 ]; then
		echo "$filepath does not exist!"
	else
		export RLWRAP_HOME=$XDG_STATE_HOME/rlwrap
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

