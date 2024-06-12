alias zshconfig="nvim $ZSHCONFIG/zsh_config_aliases.sh"
alias zshconfigdir="cd $ZSHCONFIG"
alias zshenv="nvim $ZSHCONFIG/zsh_config_env.sh"

alias z="source $HOME/.zshrc"

#oh my zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh
