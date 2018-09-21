### GIT ###

alias gs='git status'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gsh='git stash'
alias gshp='git stash pop'
alias guc="git reset HEAD~" # undo last commit
alias ga="git add"
alias gall="git add ."
alias gcm="git commit -m"
alias gcam="git commit -am"
alias gp="git push"
alias gpul="git pull"
alias gpulo="git pull origin"
alias gcp="git cherry-pick"
alias gd="git diff"



alias mnt-dev='sshfs -o IdentityFile=~/.ssh/id_rsa -o reconnect dev:/home$ $ct dev-priv:/home/ubuntu/v2.5 ~/Documents/v2.5'
alias umnt-dev='umount ~/v2.5'
alias ll='ls -al'
alias vi='vim'
alias tmux-attach='tmux attach-session -t'
