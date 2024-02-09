# append
path+=('/opt/homebrew/bin')
# or prepend
# path=('/opt/homebrew/bin' $path)
# export to sub-processes (make it inherited by child processes)
export PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
