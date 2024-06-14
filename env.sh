########################## CONFIGS ########################
 # common 
export commonCONFIG=/Users/alorme/dotfiles/config/commonconfig ; 
source $commonCONFIG/common_config_env.sh

#zsh
export ZSHCONFIG=$DOTFILES/config/zshconfig
source $ZSHCONFIG/zsh_config_env.sh

#git
export GITCONFIG=$DOTFILES/config/gitconfig
source $GITCONFIG/git_config_env.sh

#intellij
export INTELLIJCONFIG=$DOTFILES/config/intellijconfig
source $INTELLIJCONFIG/int_config_env.sh

#maven
export MAVENCONFIG=$DOTFILES/config/mavenconfig
source $MAVENCONFIG/mvn_config_env.sh

#NVM
export NVIMCONFIG=$DOTFILES/config/vimconfig
source $NVIMCONFIG/nvim_config_env.sh

#SDKman
export SDKMANCONFIG=$DOTFILES/config/sdkmanconfig
source $SDKMANCONFIG/sdkman_config_env.sh

#SSH
export SSHCONFIG=$DOTFILES/config/sshconfig
source $SSHCONFIG/ssh_config_env.sh

 # vscode 
export vscodeCONFIG=/Users/alorme/dotfiles/config/vscodeconfig ; 
source $vscodeCONFIG/vscode_config_env.sh

 # alacritty 
export alacrittyCONFIG=/Users/alorme/dotfiles/config/alacrittyconfig ; 
source $alacrittyCONFIG/alacritty_config_env.sh

 # tmux 
export tmuxCONFIG=/Users/alorme/dotfiles/config/tmuxconfig ; 
source $tmuxCONFIG/tmux_config_env.sh
