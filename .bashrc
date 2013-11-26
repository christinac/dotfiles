PATH="/usr/local/share/python:$PATH"
export LC_CTYPE=en_US.UTF-8
export EDITOR=open

# Nav
alias cdev="cd ~/Dev"

# Git
alias ga="git add"
alias gap="git add -p"

alias grm="git rm"
alias grmr="git rm -r"

alias gco="git commit"
alias gcm="git commit -m"

alias gpl="git pull"
alias gplom="git pull origin master"

alias gp="git push"
alias gpom="git push origin master"
alias gph="git push heroku master"

alias gdif="git diff"

alias gfe="get fetch"
alias gfeom="get fetch origin/master"

alias gre="git rebase"
alias greom="git rebase origin/master"

alias gsta="git status -s"

alias gcareful="git reset HEAD --hard"

# Website
alias sshcc="ssh root@69.164.216.101"

function publish() {
  scp -r $1 root@69.164.216.101:/www/christinacacioppo.com/$2
}

function insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo