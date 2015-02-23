
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export HISTFILESIZE=
export HISTSIZE=
#${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\]

export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \n\$\[\033[00m\] '
export CHROME_BIN=/usr/bin/chromium-browser
alias xo='xdg-open'
alias ttr='gvfs-trash'
alias pgr="ps aux |grep"
shopt -s cdspell



# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
