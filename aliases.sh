alias dotfiles="cd ~/.config/dotfiles"
alias aliases="nvim ~/.config/dotfiles/aliases.sh" 
alias gitconfigdir='cd $GITCONFIG'
alias gitconfig='vim $GITCONFIG/gitalias'

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

#INTELLIJ
alias int='cd ~/IdeaProjects'
alias ideavimrc='vim ~/.ideavimrc;'
alias m='mvn clean install;'	
alias msbr='mvn spring-boot:run'

#JAVA
export JAVA_HOME=$/usr/libexec/java_home
export MAVEN_HOME=~/apache-maven-3.8.5
export PATH=$PATH:$MAVEN_HOME/bin

#vim aliases
alias vk='nvim .'
