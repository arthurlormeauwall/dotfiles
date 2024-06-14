alias commonconfig="nvim $commonCONFIG/common_config_aliases.sh" 
alias commonenv="nvim $commonCONFIG/common_config_env.sh" 
alias commonconfigdir="cd $commonCONFIG"

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

function mkcd {
  mkdir $1
  cd $1
}

