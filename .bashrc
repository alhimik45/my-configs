
export VISUAL=micro
export EDITOR=micro

export DOTNET_CLI_TELEMETRY_OPTOUT=1
export AURDEST="/tmp"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


export PATH="$PATH:/home/userr/.local/bin"
export PATH="$PATH:/home/userr/.gem/ruby/2.6.0/bin"

export PATH="/home/userr/bin:$PATH"


#composer
export PATH=$PATH:$HOME/.composer/vendor/bin
export PATH=$PATH:$HOME/.cargo/bin

export JAVA_HOME=/usr/lib/jvm/default
export PATH=$JAVA_HOME/bin:$PATH
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"


export HISTFILESIZE=-1
export HISTSIZE=-1
export HISTFILE=~/.bbash_history
export HISTCONTROL=ignorespace


source "$HOME/.git-prompt.sh"
source /usr/share/nvm/init-nvm.sh

#${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\]

GREEN='\[\033[01;32m\]'
BLUE='\[\033[01;34m\]'
YELLOW='\[\033[0;33m\]'
NC='\[\033[0m\]'

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=1
# export PS1="${GREEN}\u${BLUE} \w\n${BLUE}\$${NC} "
export PROMPT_COMMAND='history -a; __git_ps1 "${GREEN}\u${BLUE} \w${YELLOW} " "\n${BLUE}\$ ${NC}" "\t%s"; ( __vte_prompt_command ) 2> /dev/null;echo -en "\033]2;"Terminal"\007"'
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

export CHROME_BIN=/usr/bin/chromium-browser
#export GOROOT=$HOME/programs/go
export GOPATH=$HOME/gopath
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
alias grep="grep --color=auto"
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias xo='xdg-open'
alias ttr='gio trash'
alias pgr="ps aux |grep -i"
alias pge="ps aux |grep -i"
alias car="cat"
alias gti="git"
alias got="git"
alias gs="git status"
alias gp="git push"
alias gc="git commit -am"
alias ga="git add -A ."
alias gd="git diff"
alias gl="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias ll="ls -lah"
alias la="ls -a"
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."
alias pu="pacaur"
alias nano="micro"
shopt -s cdspell

_completion_loader pacaur
complete -o default -F _pacaur pu
