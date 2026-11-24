#!/bin/sh
# Is it any clear that this script is very paranoid?
GITROOT=$(git rev-parse --show-toplevel) || exit 1
branch=$(git branch --show-current) || exit 1
state_file=$GITROOT/.git/hooks/confirm-push-to-primary-branch_state
confirmations=1

state=
if [ -f "$state_file" ]; then
	state=$(cat "$state_file") || exit 1
fi

case "$state" in
	ask|confirmed) ;;
	*)
		printf '%s\n' 'Invalid state: expected "ask" or "confirmed. Fix the $state_file file."' >&2
		exit 1
		;;
esac

printf '%s' ask > "$state_file" || exit 1

case "$branch" in
	main|master|trunk) ;;
	*) exit 0 ;;
esac

[ "$state" != confirmed ] || exit 0

echo "WARNING: Pushing to the $branch branch, make sure you have everything correctly set up." || exit 1

questions=(
	"Are there no unsquashed to-be-squashed commits?"
	"Did CI pass?"
	"Are you sure?"
)
i=1
while [ "$i" -le "$confirmations" ]; do
	for question in "${questions[@]}"; do
		IFS= read -r -p "$question [Y/N] " answer </dev/tty || exit 1
		if [[ $answer != "Y" && $answer != "y" ]]; then
			exit 1
		fi
	done
	printf 'Confirmation %s/%s — push anyway? [Y/N] ' "$i" "$confirmations" >&2 || exit 1
	IFS= read -r answer </dev/tty || exit 1

	case "$answer" in
		y|Y) ;;
		*) exit 1 ;;
	esac

	i=$((i + 1))
done

printf '%s' confirmed > "$state_file" || exit 1
echo "The Gods of version control have determined with reasonable certainty that nothing will break."
echo "Rerun the push command again to publish your changes."
exit 1
