# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias v='vim'
alias sv='sudo vim'
alias r='rails'
alias fphp='grep -rn --include=*.php '
alias fnsvn='grep -rn --color --exclude=*.svn-* '
alias mphpscope='find . -type f -name "*.php" > cscope.files &&  cscope -bq'
alias my='mysql -uroot -p --default-character-set=utf8'
alias hosts='vim /etc/hosts'
alias mig="bundle exec rake db:migrate"
alias ar='sudo service apache2 restart'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias ai='sudo apt-get install'
alias dfree='du -sk'
alias shut='sudo shutdown -P 0'

#alias nr='sudo service nginx restart'
alias mongodbr='sudo /etc/rc.d/mongodb restart'
alias myr='sudo /etc/rc.d/mysqld restart'
alias nr='sudo /etc/rc.d/nginx restart'
alias pr='sudo /etc/rc.d/php-fpm restart'
alias ss='sudo /etc/rc.d/nginx start ; sudo /etc/rc.d/mysqld start ; sudo /etc/rc.d/mongodb start'
alias sr='sudo /etc/rc.d/nginx restart ; sudo /etc/rc.d/mysqld restart'
alias uc='unicorn_rails -D -c config/unicorn.rb'

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

#ruby falcon patch
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_FREE_MIN=500000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000
#ruby falcon patch

#git proxy for ssh for github
export GIT_SSH=/home/dd/bin/socks5proxyssh
