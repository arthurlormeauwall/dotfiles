alias dotfiles="cd ~/dotfiles"
alias aliases="nvim ~/dotfiles/aliases.sh" 
alias home="cd ~"

alias logaws="hip -e lab aws-creds -u alorme;" 
alias logaws2="eval /"$(hip -e lab aws configure export-credentials --format env)/""

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
alias mp='mvn --quiet clean install -Plocal ;'
alias msbr='mvn spring-boot:run'
alias mpurgeandcleaninstall='mvn dependency:purge-local-repository -Dinclude:com.googlecode.owasp-java-html-sanitizer -DresolutionFuzziness=groupId -Dverbose ; mvn clean install'

function rsruntest {
  mvn verify -B -f $1 -Plocal -Dit.test=$2 failsafe:integration-test
}

function rsdebugtest {
 mvn verify -B -f $1 -Pmaui -Dit.test=$2 failsafe:integration-test -Dmaven.failsafe.debug
}

#vim aliases
alias vk='nvim .'
alias v='nvim'
alias vimkeymap="cd ~/.config/dotfiles/config/vimconfig/nvim/lua/user"
alias setMacVimKeybinding="cat ~/.config/dotfiles/config/vimconfig/nvim/lua/user/keymaps_mac.lua > ~/.config/dotfiles/config/vimconfig/nvim/lua/user/keymaps.lua"
alias setPcVimKeybinding="cat ~/.config/dotfiles/config/vimconfig/nvim/lua/user/keymaps_pc.lua > ~/.config/dotfiles/config/vimconfig/nvim/lua/user/keymaps.lua"

#ssh
alias egessh='ssh-add -D ; ssh-add ~/.ssh/id_ed25519'
alias persssh='ssh-add -D ; ssh-add ~/.ssh/id_ed255119_pers'

