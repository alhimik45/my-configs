
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export HISTFILESIZE=-1
export HISTSIZE=-1
export HISTFILE=~/.bbash_history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
#${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\]

export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \n\$\[\033[00m\] '
export CHROME_BIN=/usr/bin/chromium-browser
export GOROOT=$HOME/Programs/go
export GOPATH=$HOME/Programs/gopath
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
alias xo='xdg-open'
alias ttr='gvfs-trash'
alias pgr="ps aux |grep -i"
alias gti="git"
alias got="git"
alias gs="git st"
alias gc="git co -am"
alias ga="git add -A ."
alias gd="git diff"
shopt -s cdspell



# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
