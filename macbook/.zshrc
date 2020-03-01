# Path to your oh-my-zsh installation.
export ZSH="/Users/sinakhalili/.oh-my-zsh"
export PATH="$PATH:$HOME/flutter/bin"

source /Users/sinakhalili/scripts/antigen.zsh

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle colored-man-pages
antigen bundle magic-enter
antigen bundle extract
antigen bundle z

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

# Pure theme
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Node version manager
antigen bundle lukechilds/zsh-nvm

# Important line - don't forget!
antigen apply

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# Note that my plugins are using antigen
# plugins=(git)

# This is for pyenv
eval "$(pyenv init -)"

# This is for rbenv
eval "$(rbenv init -)"

source $ZSH/oh-my-zsh.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
