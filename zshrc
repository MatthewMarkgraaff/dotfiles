source /Users/matt/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle command-not-found
antigen bundle utility
antigen bundle rails
antigen bundle ruby
antigen bundle tmux
antigen bundle osx
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme agnoster

alias v='vim'

export CASE_SENSITIVE="true"

antigen apply
