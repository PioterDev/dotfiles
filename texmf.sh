#!/usr/bin/sh

if [[ -z "${TEXMF_ULR}" ]]; then
	export TEXMFROOT=$HOME/ulr/texlive/2025
	export TEXMFVAR=$TEXMFROOT/texmf-var
	export TEXMFCNF=$TEXMFROOT/texmf-dist/web2c
	export TEXMF_ULR=1
else
	: # noop
fi
