# Here is where you can add to the PATH
# export PATH=<more things on the path>:$PATH

export VISUAL=vim
export EDITOR="$VISUAL"
export SAVEHIST=10000000
export INC_APPEND_HISTORY=true

# you can install antigen with curl -L git.io/antigen-nightly > antigen.zsh
# but i've also included a mirror here so you can move it to your $HOME as well
source ~/antigen.zsh

antigen use oh-my-zsh

antigen bundle command-not-found # suggests commands
antigen bundle z # jump around!
antigen bundle colored-man-pages # Neat man pages

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions # Game changer!

antigen theme spaceship-prompt/spaceship-prompt

# Always remember to antigen apply 🤗
antigen apply
