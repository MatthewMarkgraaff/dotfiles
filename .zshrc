export ZSH=/Users/Matt/.oh-my-zsh

ZSH_THEME="gnzh"

CASE_SENSITIVE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git ruby rails rake bundler
)

source $ZSH/oh-my-zsh.sh

alias v="vim"
alias c="clear"
alias nggc="ng g component"
alias ohmyzsh="vim ~/.oh-my-zsh"
