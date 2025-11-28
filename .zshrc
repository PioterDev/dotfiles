
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _correct _approximate _ignored
#zstyle ':completion:*' max-errors 3
zstyle :compinstall filename '/home/pioter/.zshrc'

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

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

setopt HIST_IGNORE_ALL_DUPS
setopt PROMPT_SUBST

# PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
# PROMPT='%F{green}%n%F{28}@%F{green}%m:%F{cyan}%d:~🐟%F{white}%(!.#.$) '
PROMPT='%F{green}%n%F{28}@%F{green}%m:%F{cyan}%d:~🔷%F{white}%(!.#.$) '

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

alias ls='ls --color'
alias grep='grep --color=auto'
if [[ "$(uname)" == "Linux" ]]; then
	alias open='xdg-open'
fi
alias mvn='ln -sf /tmp/m2 $HOME/.m2; mkdir -p /tmp/m2; mvn'

