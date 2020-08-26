# some more ls aliases
if [ -d ~/bin ] ; then
  PATH="${PATH}":~/bin
fi
export PATH
export EDITOR="nvim"
#export M2_HOME="/usr/local/Cellar/maven/3.2.3/libexec"

# alias
## base
alias ll='ls -lh'
alias la='ls -lhA'
alias l='ls -CFh'
alias v='vim'
alias sv='sudo vim'
alias nv='nvim'
alias snv='sudo nvim'
alias f='grep -rn --color'
alias hosts='vim /etc/hosts'
alias dfree='du -skh'

## git
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gst='git status'
alias gsta='git stash push --all'

alias gbdma='git branch --merged | egrep -v "(^\*|master|develop|dev)" | xargs git branch -d'
