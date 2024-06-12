#Common
alias dotfiles="cd $HOME/dotfiles"
alias localdotfiles='cd $LOCALDOTFILES'

alias config="cd $CONFIG"
alias localconfig="cd $LOCALCONFIG"
alias aliases="nvim $DOTFILES/aliases.sh" 
alias localaliases="nvim $LOCALDOTFILES/aliases.sh" 
alias envs="nvim $DOTFILES/env.sh"
alias localenvs="nvim $LOCALDOTFILES/env.sh"

alias zrc="nvim $HOME/.zshrc"
alias home="cd $HOME"
alias pushdotfiles='pwd | pbcopy ; cd $DOTFILES ; ./pushToGH.sh ; cd $(pbpaste)'

function createconfig {
  cd $CONFIG
  mkdir $1config
  cd $1config
  touch $1_config_aliases.sh
  touch $1_config_env.sh  
  cd $DOTFILES
  echo "\n # $1 \nexport $1CONFIG=$DOTFILES/config/$1config ; \nsource \$$1CONFIG/$1_config_env.sh">> env.sh
  echo "\n # $1 \nsource \$$1CONFIG/$1_config_aliases.sh" >> aliases.sh
  cd config/$1config
  echo "alias $1config=\"nvim \$$1CONFIG/$1_config_aliases.sh\" \nalias $1env=\"nvim \$$1CONFIG/$1_config_env.sh\" \nalias $1configdir=\"cd \$$1CONFIG\"">> $1_config_aliases.sh
  source $HOME/.zshrc
}

function createlocalconfig {
  cd $LOCALCONFIG
  mkdir $1config
  cd $1config
  touch $1_config_aliases.sh
  touch $1_config_env.sh  
  cd $LOCALDOTFILES
  echo "\n # $1 \nexport $1CONFIG=$LOCALDOTFILES/config/$1config ; \nsource \$$1CONFIG/$1_config_env.sh">> env.sh
  echo "\n # $1 \nsource \$$1CONFIG/$1_config_aliases.sh" >> aliases.sh
  cd config/$1config
  echo "alias $1config=\"nvim \$$1CONFIG/$1_config_aliases.sh\" \nalias $1env=\"nvim \$$1CONFIG/$1_config_env.sh\" \nalias $1configdir=\"cd \$$1CONFIG\"">> $1_config_aliases.sh
  source $HOME/.zshrc
}

#Zsh
source $ZSHCONFIG/zsh_config_aliases.sh

#Git
source $GITCONFIG/git_config_aliases.sh

#INTELLI J
source $INTELLIJCONFIG/int_config_aliases.sh

#MAVEN
source $MAVENCONFIG/mvn_config_aliases.sh

#VIM
source $NVIMCONFIG/nvim_config_aliases.sh

#SDKMAN
source $SDKMANCONFIG/sdkman_config_aliases.sh

#ssh
source $SSHCONFIG/ssh_config_aliases.sh

