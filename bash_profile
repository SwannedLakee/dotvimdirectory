#from apple.stackexchange.com/questions/57569/how-to-share-history-between-t    erminal-tabs
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
export HISTTIMEFORMAT="%d/%m/%y %T "
shopt -s histappend                      # append to history, don't overwrit    e it
# Save and reload the histroy after each command finishes (effectively shares histroy between terminal windows.
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
#from http://askubuntu.com/a/475614/49853
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'


#Adding the vim path
export PATH="/usr/local/Cellar/vim/8.1.2100/bin:$PATH"

# MacPorts Installer addition on 2018-09-13_at_14:23:58: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Setting PATH for Python 3.7
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
eval "$(rbenv init -)"


#By default, binaries installed by gem will be placed into:
export PATH="/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
# Ruby stuff
export PATH="/usr/local/opt/ruby/bin:$PATH"

#For compilers to find ruby you may need to set:
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

#For pkg-config to find ruby you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

