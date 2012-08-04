# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias v='vim'
alias sv='sudo vim'
alias r='rails'
alias fphp='grep -rn --include=*.php '
alias fnsvn='grep -rn --exclude=*.svn-* '
alias mphpscope='find . -type f -name "*.php" > cscope.files &&  cscope -bq'
alias my='mysql -uroot -p --default-character-set=utf8'
alias hosts='sv /etc/hosts'
alias mig="bundle exec rake db:migrate"
alias ar='sudo service apache2 restart'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias ai='sudo apt-get install'
alias dfree='du -sk'
alias shut='sudo shutdown -P 0'

#alias nr='sudo service nginx restart'
alias mr='sudo /etc/rc.d/mysqld restart'
alias nr='sudo /etc/rc.d/nginx restart'
alias pr='sudo /etc/rc.d/php-fpm restart'
alias ss='sudo /etc/rc.d/nginx start ; sudo /etc/rc.d/mysqld start'
alias sr='sudo /etc/rc.d/nginx restart ; sudo /etc/rc.d/mysqld restart'
alias uc='unicorn_rails -D -c config/unicorn.rb'

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
