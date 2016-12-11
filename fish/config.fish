set -gx RBENV_ROOT /usr/local/var/rbenv
. (rbenv init -|psub)

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

function nvm
  bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

set PATH /Applications/Postgres.app/Contents/Versions/9.4/bin $PATH
set PATH ~/.composer/vendor/bin $PATH
set PATH /usr/local/opt/openssl/lib /usr/local/opt/openssl/include $PATH
set UPDATE_REJ_ENDPOINT 'https://preview1.rejuvenation.com'
