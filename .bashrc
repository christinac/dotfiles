PATH="/usr/local/share/python:$PATH"
export LC_CTYPE=en_US.UTF-8
export EDITOR=open

# Nav
alias cdev="cd ~/Dev"
alias cdevl="cd ~/Dev/christina-books"
alias cdevcl="cd ~/Dev/changeslogged"
alias cdevj="cd ~/Dev/jobs"

# Git
alias ga="git add"
alias gap="git add -p"

alias grm="git rm"
alias grmr="git rm -r"

alias gc="git commit"
alias gcm="git commit -m"
alias gca="git commit --amend"

alias gpl="git pull"
alias gplom="git pull origin master"

alias gp="git push"
alias gpo="git push origin"
alias gpom="git push origin master"
alias gphm="git push heroku master"

alias gdif="git diff"

alias gf="get fetch"
alias gfom="get fetch origin/master"

alias gre="git rebase"
alias greom="git rebase origin/master"

alias gsta="git status -s"

alias greshard="git reset HEAD --hard"

# Heroku 
alias hlt="heroku logs --tail"

# Hoot
alias hootun="ssh -N tunnel"

# Website
alias sshcc="ssh root@69.164.216.101"

function publish() {
  scp -r $1 root@69.164.216.101:/www/christinacacioppo.com/$2
}

function insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo