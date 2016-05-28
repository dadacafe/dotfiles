PROFILES_HOME="/Users/cbrandt/profiles"

if [ "$1" == "" ]; then
	if [ "$PROFILE_CURRENT" != "" ]; then
		echo $PROFILE_CURRENT
	else
		echo "usage profile.sh name"
	fi

else
	source "$PROFILES_HOME/.$1"
	export PROFILE_CURRENT=$1

	# Print which profile is active
	alias pfc='echo $PROFILE_CURRENT'

	# Edit settings of the current profile
	alias pfe='txopen $PROFILES_HOME/.$PROFILE_CURRENT'

	# Open profile specific tmux session
	alias pfl='tmux new-session "tmux source-file $PROFILE_TMUX"'
	
	alias pfh='cd $PROFILE_HOME'
	alias pfx='cd $PROFILE_EXEC'
fi



