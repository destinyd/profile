# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi
ZSH_THEME="powerline"
POWERLINE_NO_BLANK_LINE="true"
POWERLINE_SHOW_GIT_ON_RIGHT="true"
POWERLINE_DETECT_SSH="true"
POWERLINE_HIDE_HOST_NAME="true"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby mvn github rvm rails vundle bundler)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH="/usr/local/heroku/bin:/home/dd/bin:/home/dd/.nvm/v0.10.29/bin:/home/dd/.rvm/gems/ruby-2.1.2/bin:/home/dd/.rvm/gems/ruby-2.1.2@global/bin:/home/dd/.rvm/rubies/ruby-2.1.2/bin:/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/android-ndk:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:/usr/share/java/gradle/bin:/opt/kde/bin:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/dd/.rvm/bin:/home/dd/bin/FDK/Tools/linux:/home/dd/bin/FDK/Tools/linux:/opt/src/go/bin:/home/dd/.rvm/bin:/home/dd/bin/FDK/Tools/linux:/home/dd/bin/FDK/Tools/linux:/home/dd/.rvm/bin"

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -f ~/.bash_profile ]] && . ~/.bash_profile

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
