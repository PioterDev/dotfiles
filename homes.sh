#!/usr/bin/sh

if [[ -z "${CARGO_HOME}" ]]; then
	export CARGO_HOME=$HOME/ulr/lib/cargo
fi

if [[ -z "${RUSTUP_HOME}" ]]; then
	export RUSTUP_HOME=$HOME/ulr/lib/rustup
fi

if [[ -z "${GRADLE_USER_HOME}" ]]; then
	export GRADLE_USER_HOME=$HOME/Software/3/Java/Gradle
fi

if [[ -z "${XDG_STATE_HOME}" ]]; then return; fi

if [[ -z "${LESSHISTFILE}" ]]; then
	export LESSHISTFILE=$XDG_STATE_HOME/lesshst
fi

if [[ -z "${PYTHON_HISTORY}" ]]; then
	export PYTHON_HISTORY=$XDG_STATE_HOME/python_history
fi

if [[ -z "${RLWRAP_HOME}" ]]; then
	export RLWRAP_HOME=$XDG_STATE_HOME/rlwrap
fi
