export DOTFILES=~/dotfiles
export CONFIG=$DOTFILES/config
########################## CONFIGS ########################
 # common 
export commonCONFIG=$CONFIG/commonconfig
source $commonCONFIG/common_config_env.sh

#zsh
export ZSHCONFIG=$CONFIG/zshconfig
source $ZSHCONFIG/zsh_config_env.sh

#git
export GITCONFIG=$CONFIG/gitconfig
source $GITCONFIG/git_config_env.sh

#intellij
export INTELLIJCONFIG=$CONFIG/intellijconfig
source $INTELLIJCONFIG/int_config_env.sh

#maven
export MAVENCONFIG=$CONFIG/mavenconfig
source $MAVENCONFIG/mvn_config_env.sh

#NVM
export NVIMCONFIG=$CONFIG/vimconfig
source $NVIMCONFIG/nvim_config_env.sh

#SDKman
export SDKMANCONFIG=$CONFIG/sdkmanconfig
source $SDKMANCONFIG/sdkman_config_env.sh

#SSH
export SSHCONFIG=$CONFIG/sshconfig
source $SSHCONFIG/ssh_config_env.sh

 # vscode 
export vscodeCONFIG=$CONFIG/vscodeconfig ; 
source $vscodeCONFIG/vscode_config_env.sh

 # alacritty 
export alacrittyCONFIG=$CONFIG/alacrittyconfig ; 
source $alacrittyCONFIG/alacritty_config_env.sh

 # tmux 
export tmuxCONFIG=$CONFIG/tmuxconfig ; 
source $tmuxCONFIG/tmux_config_env.sh

 # java 
export javaCONFIG=$CONFIG/javaconfig ; 
source $javaCONFIG/java_config_env.sh

 # python 
export pythonCONFIG=$CONFIG/pythonconfig ; 
source $pythonCONFIG/python_config_env.sh
