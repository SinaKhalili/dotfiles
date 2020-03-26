# Matlab is wack and only works like this :(
export PATH=/usr/local/MATLAB/R2020a/bin:$HOME/dotfiles/scripts:$HOME/bin:/snap/bin:/usr/local/bin:$PATH

# Path to my oh-my-zsh installation
export ZSH="/home/sina/.oh-my-zsh"

# Using the nightly, with:
# curl -L git.io/antigen-nightly > antigen.zsh
source ~/antigen.zsh

# Load oh-my-zsh library
antigen use oh-my-zsh

# zsh builtins
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle command-not-found
antigen bundle z
antigen bundle pyenv
antigen bundle thefuck
antigen bundle colored-man-pages
antigen bundle fasd

# zsh-users bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

# misc zsh plugins
antigen bundle soimort/you-get

# the theme! 
antigen theme therzka/zemoji

# don't forget this line!
antigen apply

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
