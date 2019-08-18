# brew autocomplete
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi
autoload -Uz compinit
compinit

# GLOBALS
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$PATH:/anaconda3/bin
export JAVA_HOME=/Library/Java/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export ANDROID_HOME=$ANDROID_HOME:/usr/local/share/android-sdk

# GO stuff
export GOPATH=~/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:/usr/local/share/dotnet

# CUSTOM PROMPT
git_prompt_info() { git symbolic-ref --short HEAD } # get current branch name
setopt prompt_subst
export PROMPT=$'%{\e[0;31m%}❤ ❤ ❤ %{\e[m%}%{\e[44;38m%}%~%{\e[m%} \# '
export RPROMPT='[%F{yellow}$(git_prompt_info 2> /dev/null)%f]'

# GENERAL
alias python=python3
alias p=python
alias v=/usr/local/bin/nvim
alias z="v ~/.zshrc && source ~/.zshrc"
alias ls="LSCOLORS=Exfxcxdxbxegedabagddad ls -Glaph"
alias jn="jupyter notebook"
alias cd="pushd $1 > /dev/null"
alias CD="popd"
alias cp="rsync --rsh=ssh -Pah"

# SSH SHORTCUTS
alias eustis="ssh la978453@eustis.eecs.ucf.edu"
alias cecs="ssh la978453@www.cecs.ucf.edu"
alias droplet="ssh root@104.248.113.22"

# QUICK GOTOs
alias gtc="cd ~/work/sideProject-InterviewPrep/crackingTheCodingInterview"
alias gts="cd ~/work/sportzcast-ControlRoom/"
alias gtw="cd ~/work/sideProject-WorkoutDroid"
alias gtm="cd ~/Google\ Drive/School/Spring\ 2019/MAS3105\ \|\ Matrix\ and\ Linear"

# GITHUB SHORTCUTS
alias gb="git branch -a"
alias gac="git add -A && git commit"
alias gp="git push"
alias gs="git status"
alias gc="git checkout"
alias gcl="git clone"
alias gl="git log --all --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# DOCKER SHORTCUTS
alias dk="docker kill"
alias dp="docker ps"
alias dpa="docker ps -a"
alias dil="docker image ls"
de () { if [[ "$#" -eq 1 ]]; then docker exec -ti "$1" /bin/bash; else docker exec -ti `docker ps -q | head -n1` /bin/bash; fi }
dka () { docker kill `docker ps -q | tr '\n' ' '` }

# ITERM OPTIONS
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export ANDROID_HOME=/usr/local/share/android-sdk

# MISC
eval $(thefuck --alias --enable-experimental-instant-mode)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

###-tns-completion-start-###
if [ -f /Users/youngsage/.tnsrc ]; then
    source /Users/youngsage/.tnsrc
fi
###-tns-completion-end-###

# rm -f ~/.zcompdump; compinit
