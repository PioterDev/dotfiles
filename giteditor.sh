#!/bin/sh

editors="nvim:vim"

name=$0
old_ifs=$IFS
IFS=:
set -f

editors_comma_separated=

for editor in $editors; do
	if command -v "$editor" >/dev/null 2>&1; then
		exec "$editor" "$@"
	fi
	if [[ -n $editors_comma_separated ]]; then
		editors_comma_separated="$editors_comma_separated, $editor"
	else
		editors_comma_separated="$editor"
	fi
done

printf "%s: no supported editor found (checked: %s).\n" $name "$editors_comma_separated" >&2
exit 1
