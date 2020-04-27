# A bunch of random stuff!! 
export PATH=$HOME/development/android-studio/bin:$PATH
export PATH=$HOME/.yarn/bin:$HOME/development/flutter/bin:$PATH
export PATH=/usr/local:$HOME/dotfiles/scripts:$HOME/bin:/snap/bin:$PATH

# This is just for git commits - you should always use emacs!!!
export VISUAL=vim
export EDITOR="$VISUAL"

# Some useful aliases
alias ze="$EDITOR ~/.zshrc"
alias zs="source ~/.zshrc"

alias ve="$EDITOR ~/.vimrc"

# Path to your oh-my-zsh install
export ZSH="$HOME/.oh-my-zsh"

# Big cheese!! 🧀!! We're going to install a zsh package manager!

# Using the nightly, with:
# curl -L git.io/antigen-nightly > antigen.zsh
source ~/antigen.zsh

# Load the oh-my-zsh library
antigen use oh-my-zsh

# zsh has a ton of nice builtins!
# here just my favs (I haven't even seen them all)
antigen bundle git # autocompletions
antigen bundle pip # autocompletions
antigen bundle heroku # autocompletions
antigen bundle yarn # autocompletions and path

# Python 🐍 and Node 💚 version managers
antigen bundle pyenv
antigen bundle lukechilds/zsh-nvm

# A bit more exciting 😎
antigen bundle command-not-found # suggests commands
antigen bundle z # jump around!
antigen bundle colored-man-pages # Neat man pages bro

# zsh-users bundles (an awesome group of devs 🙏)
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions # Game changer!

# Shhh secret 🤫 bundles
antigen bundle thefuck # 🙃
antigen bundle fasd # Another z, but with opening!

# ESSENTIAL
antigen bundle SinaKhalili/sina

# Experimental zone
antigen bundle desyncr/auto-ls 
antigen bundle andrewferrier/fzf-z 

# Cool gitignore creation module
antigen bundle voronkovich/gitignore.plugin.zsh 

# Let's add a theme! 
antigen theme therzka/zemoji # A cool emoji based theme! 

# Always remember to antigen apply!! 🤗🤗
antigen apply
