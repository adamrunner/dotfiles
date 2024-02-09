# add rbenv/bin to path
set -Ux fish_user_paths $HOME/.rbenv/bin $fish_user_paths

alias gs="git status"
alias gb="git branch"
alias gc="git checkout"
alias gd="git diff"
alias be="bundle exec"
alias speed="wget --output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip"
alias wanip="curl -qs http://ifconfig.co"
alias rs="bundle exec rails server"
alias rc="bundle exec rails console"

function ipinfo
   curl "ipinfo.io/$argv"
end

# Load rbenv automatically by appending
# the following to ~/.config/fish/config.fish:

status --is-interactive; and rbenv init - fish | source

# Setting PATH for Python 3.10
# The original version is saved in /Users/adamrunner/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.10/bin" "$PATH"
set -x PATH "/Users/adamrunner/Library/Python/3.10/bin" "$PATH"
