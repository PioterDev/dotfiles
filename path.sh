#!/usr/bin/sh

add_cargo_bin_to_path_if_not_already_there() {
	if [[ -z "${CARGO_HOME}" ]]; then
		return
	fi
	local CARGO_BIN="$CARGO_HOME/bin"
	if [[ ":$PATH:" == *":$CARGO_BIN:"* ]]; then
		return
	fi
	export PATH=$CARGO_BIN:$PATH
}

add_cargo_bin_to_path_if_not_already_there

if [[ -z "${PATH_ULR}" ]]; then
	PATH=$HOME/ulr/bin:$PATH
	PATH=$PATH:$HOME/ulr/texlive/2025/bin/x86_64-linux
	export PATH
	export PATH_ULR=1
fi

if [[ -z "${PKG_CONFIG_PATH_ULR}" ]]; then
	export PKG_CONFIG_PATH=$HOME/ulr/lib/pkgconfig:$PKG_CONFIG_PATH
	export PKG_CONFIG_PATH_ULR=1
fi

