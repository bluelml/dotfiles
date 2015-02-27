export PATH="$PATH:/usr/local/bin:/usr/local/sbin:$ZSH/bin"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

# put ~/bin on PATH if you have it
if [[ -d $HOME/bin ]]; then
	PATH="$HOME/bin:$PATH"
fi
export PATH="./bin:$PATH"
