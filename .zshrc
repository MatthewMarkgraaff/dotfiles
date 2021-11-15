export ZSH="/Users/matt/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias v="nvim"
alias rosetta="arch -x86_64 zsh"

alias g="git"
alias gp="git push"
alias gpm="git push origin master"
alias gl="git pull"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gm="git merge"
alias glo="git log"
alias vvimrc="nvim ~/.vimrc"
alias vzsh="nvim ~/.zshrc"
alias tks="tmux kill-session"
alias c="clear"

CASE_SENSITIVE=true

eval "$(/opt/homebrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PKG_CONFIG_PATH="/opt/homebrew/opt/readline/lib/pkgconfig"
export LDFLAGS="-L/opt/homebrew/opt/readline/lib"
export CPPFLAGS="-I/opt/homebrew/opt/readline/include"

export GEM_HOME="$HOME/.gem"
export PATH=$GEM_HOME/bin:$PATH

export PATH=$PATH:$(go env GOPATH)/bin

export PATH="$PATH:/Library/flutter/bin"

export KEYSTORE_PATH="/Users/matt/development/nomaddcert.p12"
export KEYSTORE_PASSWORD="Windhoek10000"

# Kitty configs
autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

eval "$(rbenv init -)"
