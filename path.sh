#!/usr/bin/sh

if [[ -z "${PATH_ULR}" ]]; then
	PATH=$HOME/ulr/bin:$PATH
	PATH=$PATH:$HOME/ulr/texlive/2025/bin/x86_64-linux
	export PATH
	export PATH_ULR=1
else
	: # noop
fi

if [[ -z "${PKG_CONFIG_PATH_ULR}" ]]; then
	export PKG_CONFIG_PATH=$HOME/ulr/lib/pkgconfig:$PKG_CONFIG_PATH
	export PKG_CONFIG_PATH_ULR=1
else
	: # noop
fi

