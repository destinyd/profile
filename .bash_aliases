# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias v='vim'
alias sv='sudo vim'
alias r='rails'
alias fphp='grep -rn --include=*.php '
alias fnsvn='grep -rn --color --exclude=*.svn-* '
alias f='grep -rn --color'
alias mphpscope='find . -type f -name "*.php" > cscope.files &&  cscope -bq'
alias my='mysql -uroot -p --default-character-set=utf8'
alias hosts='vim /etc/hosts'
alias mig="bundle exec rake db:migrate"
alias ar='sudo service apache2 restart'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias ai='sudo apt-get install'
alias dfree='du -skh'
alias shut='sudo shutdown -P 0'

#alias nr='sudo service nginx restart'
alias mongodbr='sudo /etc/rc.d/mongodb restart'
alias postr='sudo -u postgres /usr/bin/pg_ctl -s -D /data/postgres restart -w -t 120'
alias myr='sudo /etc/rc.d/mysqld restart'
alias ns='sudo nginx'
alias nr='sudo pkill nginx; ns'
alias pr='sudo pkill php-fpm; sudo php-fpm'
alias mongodbs='sudo -u mongodb -g daemon /usr/bin/mongod -f /etc/mongodb.conf --fork --logpath /var/log/mongodb/mongod.log'
#alias ss='nr ; sudo -u mysql -g mysql mysqld --console & ; mongodbs '
alias mr='sudo -u mysql -g mysql mysqld --console &'
alias ss='nr ; mongodbs ; postr'
alias sr='nr ; sudo /etc/rc.d/mysqld restart'
alias pgs='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgr='pg_ctl -D /usr/local/var/postgres stop -s -m fast ; pgs'
alias uc='unicorn_rails -D -c config/unicorn.rb'
alias hsk='systemd start phddns.service'
alias killqq='ps aux | grep C: | awk "{print \$2}" | xargs kill -9'
alias flushdns='sudo killall -HUP mDNSResponder'

export XMODIFIERS="@im=fcitx"
export XIM=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XIM_PROGRAM=fcitx

export GOPATH=/opt/src/go

if [ -d ~/bin ] ; then
  PATH="${PATH}":~/bin
fi
PATH=$PATH:$GOPATH/bin
export PATH
export GREP_OPTIONS="--exclude-dir=\.svn"
export SVN_EDITOR=vim

#ruby falcon patch
#export RUBY_HEAP_MIN_SLOTS=1000000
#export RUBY_HEAP_FREE_MIN=500000
#export RUBY_HEAP_SLOTS_INCREMENT=1000000
#export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
#export RUBY_GC_MALLOC_LIMIT=100000000
#ruby falcon patch

#git proxy for ssh for github
#export GIT_SSH=/home/dd/bin/socks5proxyssh
#
export EDITOR="vim"
export M2_HOME="/usr/local/Cellar/maven/3.2.3/libexec"
