#!/usr/bin/sh

if [[ -z "${CARGO_HOME}" ]]; then
	export CARGO_HOME=$HOME/ulr/lib/cargo
fi

if [[ -z "${RUSTUP_HOME}" ]]; then
	export RUSTUP_HOME=$HOME/ulr/lib/rustup
fi
