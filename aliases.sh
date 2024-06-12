#Common
alias dotfiles="cd $HOME/dotfiles"
alias aliases="nvim $DOTFILES/aliases.sh" 
alias envs="nvim $HOME/.zshenv"
alias zrc="nvim $HOME/.zshrc"
alias home="cd $HOME"
alias pushdotfiles="pwd | pbcopy ; cd $DOTFILES ; chmode +x pushToGH.sh ; ./pushToGH.sh ; cd $pbpaste"

#Zsh
source $ZSHCONFIG/zsh_config_aliases.sh

#Git
source $GITCONFIG/git_config_aliases.sh

#EGE
source $EGECONFIG/ege_config_aliases.sh

#INTELLI J
alias int='cd ~/IdeaProjects'
alias ideavimrc='vim ~/.ideavimrc;'

#MAVEN
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

#VIM
alias vk='nvim .'
alias v='nvim'
alias vimkeymap="cd ~/.config/dotfiles/config/vimconfig/nvim/lua/user"
alias setMacVimKeybinding="cat ~/.config/dotfiles/config/vimconfig/nvim/lua/user/keymaps_mac.lua > ~/.config/dotfiles/config/vimconfig/nvim/lua/user/keymaps.lua"
alias setPcVimKeybinding="cat ~/.config/dotfiles/config/vimconfig/nvim/lua/user/keymaps_pc.lua > ~/.config/dotfiles/config/vimconfig/nvim/lua/user/keymaps.lua"


