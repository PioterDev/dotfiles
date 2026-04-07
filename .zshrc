
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _correct _approximate _ignored
#zstyle ':completion:*' max-errors 3
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=100000
setopt notify
#bindkey -v
# End of lines configured by zsh-newuser-install

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

setopt HIST_IGNORE_ALL_DUPS
setopt PROMPT_SUBST

# PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
# PROMPT='%F{green}%n%F{28}@%F{green}%m:%F{cyan}%d:~🐟%F{white}%(!.#.$) '
PROMPT='%F{green}%n%F{28}@%F{green}%m:%F{cyan}%d:~🔷%F{white}%(!.#.$) '

terminate-bg() {
	if [ -z "$(jobs)" ]; then
		printf "\nNo job to terminate\n"
		zle reset-prompt
		return 0
	fi
	local job=$(jobs -p %+)
	# WTF?!
	local state="${(@j: :)${(@s: :)job}[5]}"
	local pid="${(@j: :)${(@s: :)job}[4]}"
	local cmd="${(@j: :)${(@s: :)job}[@]:8}"
	if [ "$state" = "suspended" ]; then printf "\n"; fi
	kill $pid;
	if [ "$state" = "suspended" ]; then fg; fi
	return 0
}
zle -N terminate-bg terminate-bg
bindkey "^T" terminate-bg

# TODO: XDG_SESSION_DESKTOP may not be defined, while XDG_CURRENT_DESKTOP is a colon-separated list; see
# https://superuser.com/questions/1074068
# https://unix.stackexchange.com/questions/116539
# https://www.freedesktop.org/software/systemd/man/latest/pam_systemd.html#desktop=
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
	else
		export RLWRAP_HOME=$XDG_STATE_HOME/rlwrap
	fi
	path_ulr
	if ! [ $? -eq 0 ]; then
		echo "$filepath does not exist!"
	fi
}

main

