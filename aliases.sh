#Common
alias dotfiles="cd $HOME/dotfiles"
alias config="cd $DOTFILES/config"
alias aliases="nvim $DOTFILES/aliases.sh" 
alias envs="nvim $HOME/.zshenv"
alias zrc="nvim $HOME/.zshrc"
alias home="cd $HOME"
alias pushdotfiles='pwd | pbcopy ; cd $DOTFILES ; ./pushToGH.sh ; cd $(pbpaste);'

#Zsh
source $ZSHCONFIG/zsh_config_aliases.sh

#Git
source $GITCONFIG/git_config_aliases.sh

#EGE
source $EGECONFIG/ege_config_aliases.sh

#INTELLI J
source $INTELLIJCONFIG/int_config_aliases.sh

#MAVEN
source $MAVENCONFIG/mvn_config_aliases.sh

#VIM
source $NVIMCONFIG/nvim_config_aliases.sh

#SDKMAN
source $SDKMANCONFIG/sdkman_config_aliases.sh


