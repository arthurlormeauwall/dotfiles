alias gitconfigdir='cd $GITCONFIG'
alias gitconfig='nvim $GITCONFIG/git_config_aliases.sh'

alias gpullmaster='git checkout master; git pull'
alias gm='git merge'

alias gcko='git checkout'

alias gsetupstream='git push --set-upstream origin'
alias gb='git branch'
alias gdelremote='git push -d origin'
alias gdelbranch='git branch -d'

alias gall='git add --all'
alias gc='git commit -m;'
alias gpush='git push'
alias gpull='git pull'

alias gpwip='git add --all; git commit -m "working progress";git push;'
alias gpf='git push --force'

function gcreatenewbranch {
gpullmaster
gcko -b $1
gsetupstream $1
}
