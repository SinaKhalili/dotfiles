# dotfiles
:+1:This is just another dotfiles folder comin through! :thinking:

The folder format is for easily using GNU Stow to symlink the dotfiles to the home folder. Now I can just use a little script I wrote in here [stowit.sh](stowit.sh) and boom! All my changes are symlinked!

This repository contains my configs for: **git**, **spacemacs**, **i3wm**, **vim**, **zsh** and **i3blocks** dotfiles.

It also contains some scripts I use for convenience: 
 * [pbcopy](scripts/pbcopy) Just emulate the behaviour of pbcopy on mac (so I can pipe into it)
 * [setpape](scripts/setpape) Uses rofi to show a list of wallpapers and sets the chosen one
 * [connect-wifi-rofi](scripts/connect-wifi-rofi) Uses rofi to show a list of networks and tries to connect to the chosen one. 
 Uses nmcli
 * [emoji-prompt](scripts/emoji-prompt) Uses rofi to show a list of emojis to chose from and copies the selected one to the clipboard. Requires the .emoji file in the folder to be in $HOME
 Based off of luke smith xyz's emoji script (whose original script I cannot find :thinking:) 
 * [ccowsay](scripts/ccowsay) [Cowsay written in cow](https://github.com/SinaKhalili/cowsay-but-in-cow)
 * [ps3convert](scripts/ps3convert) Uses ffmpeg to convert videos (usually .mkv files) to videos that can run on the ps3 from a USB

It love [rofi](https://github.com/davatorium/rofi) and use the [purple](https://github.com/davatorium/rofi/blob/next/themes/purple.rasi) theme. 

I'm a spacemacs traitor now :sunglasses: 
