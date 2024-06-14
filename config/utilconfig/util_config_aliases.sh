alias utilconfig="nvim $utilCONFIG/util_config_aliases.sh" 
alias utilenv="nvim $utilCONFIG/util_config_env.sh" 
alias utilconfigdir="cd $utilCONFIG"

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

  cd $DOTFILES
  cp configlist.sh foo.txt.tmp
  sed '$ d' foo.txt.tmp > configlist.sh
  rm -f foo.txt.tmp
  echo "$1config">>configlist.sh
  echo "'\"">>configlist.sh

  source $HOME/.zshrc
  cd $CONFIG/$1config
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

  cd $LOCALDOTFILES
  cp localconfiglist.sh foo.txt.tmp
  sed '$ d' foo.txt.tmp > localconfiglist.sh
  rm -f foo.txt.tmp
  echo "$1config">>localconfiglist.sh
  echo "'\"">>localconfiglist.sh

  source $HOME/.zshrc
  cd $CONFIG/$1config
}

function importCertInSdkman {
  keytool -import -trustcacerts -keystore ~/.sdkman/candidates/java/current/lib/security/cacerts -storepass changeit -noprompt -alias $1 -file $2.crt
}



