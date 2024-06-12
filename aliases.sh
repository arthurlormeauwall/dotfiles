#Common
alias dotfiles="cd $HOME/dotfiles"
alias aliases="nvim $DOTFILES/aliases.sh" 
alias envs="nvim $HOME/.zshenv"
alias zrc="nvim $HOME/.zshrc"
alias home="cd $HOME"
alias pushdotfiles="pwd | pbcopy ; cd $DOTFILES ; ./pushToGH.sh ; cd $(pbpaste);"

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
alias vk='nvim .'
alias v='nvim'
alias vimkeymap="cd ~/.config/dotfiles/config/vimconfig/nvim/lua/user"
alias setMacVimKeybinding="cat ~/.config/dotfiles/config/vimconfig/nvim/lua/user/keymaps_mac.lua > ~/.config/dotfiles/config/vimconfig/nvim/lua/user/keymaps.lua"
alias setPcVimKeybinding="cat ~/.config/dotfiles/config/vimconfig/nvim/lua/user/keymaps_pc.lua > ~/.config/dotfiles/config/vimconfig/nvim/lua/user/keymaps.lua"


