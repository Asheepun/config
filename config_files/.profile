export PATH=$PATH:~/.scripts
#programs
export PATH=$PATH:~/Git-src/st
export PATH=$PATH:~/Git-src/sent-0.2
export PATH=$PATH:~/Git-src/sc-im/src
export PATH=$PATH:~/Git-src/lf
export PATH=$PATH:~/Git-src/fzf

export $EDITOR="vim"
export $TERMINAL="gnome-terminal"
export $BROWSER="chromium"

alias gP="cd ~/Documents/Projects"
alias gp="cd ~/Pictures"

alias gitlog="git log"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH="$HOME/.cargo/bin:$PATH"
