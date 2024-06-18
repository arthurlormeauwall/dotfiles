alias commonconfig="nvim $commonCONFIG/common_config_aliases.sh" 
alias commonenv="nvim $commonCONFIG/common_config_env.sh" 
alias commonconfigdir="cd $commonCONFIG"

alias configlistconfig="nvim $commonCONFIG/configlist.sh"

alias dotfiles="cd $HOME/dotfiles"
alias localdotfiles='cd $LOCALDOTFILES'

alias config="cd $CONFIG"
alias localconfig="cd $LOCALCONFIG"

alias localaliases="nvim $LOCALDOTFILES/aliases.sh" 
alias aliases="nvim $commonCONFIG/aliases.sh" 

alias envs="nvim $commonCONFIG/env.sh"
alias localenvs="nvim $LOCALDOTFILES/env.sh"

alias zrc="nvim $HOME/.zshrc"
alias home="cd $HOME"
alias pushdotfilesSSH='pwd | pbcopy ; cd $commonCONFIG/ ; ./pushToGHChangingSSH.sh ; cd $(pbpaste)'
alias pushdotfiles='pwd | pbcopy ; cd $commonCONFIG/ ; ./pushToGH.sh ; cd $(pbpaste)'

function mkcd {
  mkdir $1
  cd $1
}
alias rmrf="rm -rf"
alias cpr="cp -r"
