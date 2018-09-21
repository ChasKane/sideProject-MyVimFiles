# GLOBALS
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin

# GO stuff
export GOPATH=~/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# CUSTOM PROMPT
git_prompt_info() { git symbolic-ref --short HEAD } # get current branch name
setopt prompt_subst
export PROMPT=$'%{\e[0;31m%}❤ ❤ ❤ %{\e[m%}%{\e[44;38m%}%~%{\e[m%} \# '
export RPROMPT='[%F{yellow}$(git_prompt_info 2> /dev/null)%f]'

# GENERAL
alias python=python3
alias v=/usr/local/bin/nvim
alias z="v ~/.zshrc && source ~/.zshrc"
alias ls="ls -Glaph"
alias eustis="ssh la978453@eustis.eecs.ucf.edu"

# QUICK GOTOs
alias gtc="cd ~/github/sideProject-InterviewPrep/crackingTheCodingInterview"
alias gtn="cd ~/go/src/newBackend"

# GITHUB SHORTCUTS
alias gb="git fetch && git branch -a"
alias gac="git add -A && git commit"
alias gp="git push heroku master"
alias gs="git status"
alias gl="git log --all --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
eval $(thefuck --alias --enable-experimental-instant-mode)

# ITERM OPTIONS
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# MISC
eval "$(rbenv init -)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
