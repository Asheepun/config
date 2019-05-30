HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend
shopt -s checkwinsize

shopt -s autocd

alias gh="cd ~"
alias gP="cd ~/Documents/Projects/boyandbox"
alias gp="cd ~/Pictures"
alias gv="cd ~/Videos"
alias gG="cd ~/Git-src"
alias gd="cd ~/Documents"
alias gD="cd ~/Downloads"
alias gs="cd ~/Documents/School"
alias gS="cd ~/.scripts"
alias gm="cd ~/Music"
alias gM="cd /media"
alias gr="cd /"

alias gitlog="git --no-pager log --oneline"

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

color_prompt=yes;

alias ls='ls --color=auto'

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

#PS1="[\[\033[32m\]\w]\[\033[0m\]\$(__git_ps1)\n\[\033[1;36m\]\u\[\033[32m\]$ \[\033[0m\]"

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
