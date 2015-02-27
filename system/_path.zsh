export PATH="./bin:/usr/local/bin:/usr/local/sbin:$ZSH/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

#Add local bin
if [[ -f $HOME/bin ]]; then
	export PATH="$HOME/bin:$PATH"
fi
