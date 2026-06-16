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

if [[ -z "${DOTNET_CLI_HOME}" ]]; then
	export DOTNET_CLI_HOME=$HOME/Software/3/dotnet
fi

# https://learn.microsoft.com/en-us/nuget/reference/cli-reference/cli-ref-environment-variables
if [[ -z "${NUGET_PACKAGES}" ]]; then
	export NUGET_PACKAGES=$HOME/Software/3/dotnet/nuget
fi

if [[ -z "${NUGET_HTTP_CACHE_PATH}" ]]; then
	export NUGET_HTTP_CACHE_PATH=/tmp/nuget_${USER}_http_cache
fi

# https://github.com/dotnet/aspnetcore/issues/43278
# Bruh...
# https://github.com/dotnet/sdk/issues/8678
# Another one.

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

if [[ -z "${SQLITE_HISTORY}" ]]; then
	export SQLITE_HISTORY=$XDG_STATE_HOME/sqlite_history
fi

