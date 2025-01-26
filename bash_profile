#from apple.stackexchange.com/questions/57569/how-to-share-history-between-t    erminal-tabs
echo "We have entered .bash_profile"
# This runs when I ssh in from another computer

# Tidy for macOS is adding the new path for Tidy.
export PATH=/usr/local/bin:$PATH

export PATH=/home/joe/.local/bin:$PATH


# Tidy for macOS is adding the new path for Tidy.
export PATH=/usr/local/bin:$PATH


setxkbmap us


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
echo "Leaving .bash_profile"

