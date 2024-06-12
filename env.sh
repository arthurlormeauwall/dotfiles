export DOTFILES=$HOME/dotfiles
export CONFIG=$DOTFILES/config

#common
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/go/bin:$PATH

#zsh
export ZSHCONFIG=$DOTFILES/config/zshconfig
source $ZSHCONFIG/zsh_config_env.sh

#git
export GITCONFIG=$DOTFILES/config/gitconfig
source $GITCONFIG/git_config_env.sh

#ege
export EGECONFIG=$DOTFILES/config/egeconfig
source $EGECONFIG/ege_config_env.sh

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


 # test 
 export testCONFIG=/Users/alorme/dotfiles/config/testconfig ; 
 source $testCONFIG/test_config_env.sh

 # test 
export testCONFIG=/Users/alorme/dotfiles/config/testconfig ; 
source $testCONFIG/test_config_env.sh
