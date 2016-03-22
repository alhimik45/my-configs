
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export HISTFILESIZE=-1
export HISTSIZE=-1
export HISTFILE=~/.bbash_history
export HISTCONTROL=ignorespace


#${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\]

GREEN='\[\033[01;32m\]'
BLUE='\[\033[01;34m\]'
YELLOW='\[\033[0;33m\]'
NC='\[\033[0m\]'

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=1
# export PS1="${GREEN}\u${BLUE} \w\n${BLUE}\$${NC} "
export PROMPT_COMMAND='history -a; __git_ps1 "${GREEN}\u${BLUE} \w${YELLOW} " "\n${BLUE}\$ ${NC}" "\t%s"; __vte_prompt_command'

export CHROME_BIN=/usr/bin/chromium-browser
export GOROOT=$HOME/Programs/go
export GOPATH=$HOME/Programs/gopath
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
alias xo='xdg-open'
alias ttr='gvfs-trash'
alias pgr="ps aux |grep -i"
alias pge="ps aux |grep -i"
alias gti="git"
alias got="git"
alias gs="git st"
alias gc="git co -am"
alias ga="git add -A ."
alias gd="git diff"
alias gl="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias ll="ls -lah"
shopt -s cdspell



# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
