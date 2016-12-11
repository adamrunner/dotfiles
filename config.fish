# This file lives ~/.config/fish/config.fish
# Lines 2 & 3 are for compatibility with rbenv
set -gx RBENV_ROOT /usr/local/var/rbenv
. (rbenv init -|psub)

# Aliases just make some commonly used git commands easier and faster to type. 
alias gs="git status"
alias gb="git branch"
alias gc="git checkout"
alias gd="git diff"
# Below only needed for Postgres.app for Mac
set PATH /Applications/Postgres.app/Contents/Versions/9.4/bin $PATH
