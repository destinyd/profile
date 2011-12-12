# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias ssh07='ssh root@192.168.1.7'
alias v='vim'
alias sv='sudo vim'
alias r='rails'
alias fphp='grep -rn --include=*.php '
alias fnsvn='grep -rn --exclude=*.svn-* '
alias mphpscope='find . -type f -name "*.php" > cscope.files &&  cscope -bq'
alias m='mysql -uroot -p --default-character-set=utf8'
alias m7='mysql -h 192.168.1.7 -uroot -pbusytrade88 --default-character-set=utf8'
alias JPDD='ssh -i ~/.ssh/JPDD.pem ec2-user@ec2-46-51-237-213.ap-northeast-1.compute.amazonaws.com'
alias hosts='sv /etc/hosts'
alias mig="bundle exec rake db:migrate"
alias ar='sudo service apache2 restart'
alias nr='sudo service nginx restart'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias ai='sudo apt-get install'
alias dfree='du -sk'
alias shut='sudo shutdown -P 0'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export XMODIFIERS="@im=fcitx"
export XIM=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XIM_PROGRAM=fcitx

if [ -d ~/bin ] ; then
  PATH=~/bin:"${PATH}"
fi
export PATH
export GREP_OPTIONS="--exclude-dir=\.svn"
export SVN_EDITOR=vim
