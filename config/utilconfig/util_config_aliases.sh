alias utilconfig="nvim $utilCONFIG/util_config_aliases.sh" 
alias utilenv="nvim $utilCONFIG/util_config_env.sh" 
alias utilconfigdir="cd $utilCONFIG"

function deletelastline {
  cp $1 foo.txt.tmp
  sed '$ d' foo.txt.tmp > $1
  rm -f foo.txt.tmp
}


function deleteconfig {
  config
  rmrf $1config

  commonconfigdir

  deletelastline aliases.sh
  deletelastline aliases.sh
  deletelastline aliases.sh

  deletelastline env.sh
  deletelastline env.sh
  deletelastline env.sh
  deletelastline env.sh

  deletelastline configlist.sh
  deletelastline configlist.sh
  echo "'\"">>configlist.sh
}


function createconfig {
  cd $CONFIG
  mkdir $1config
  cd $1config
  touch $1_config_aliases.sh
  touch $1_config_env.sh

  cd $commonCONFIG
  echo "\n # $1 \nexport $1CONFIG=\$CONFIG/$1config ; \nsource \$$1CONFIG/$1_config_env.sh">> env.sh
  echo "\n # $1 \nsource \$$1CONFIG/$1_config_aliases.sh" >> aliases.sh


  cd ..
  cd $1config
  echo "alias $1config=\"nvim \$$1CONFIG/$1_config_aliases.sh\" \nalias $1env=\"nvim \$$1CONFIG/$1_config_env.sh\" \nalias $1configdir=\"cd \$$1CONFIG\"">> $1_config_aliases.sh

  cd ..
  cd $commonCONFIG
  deletelastline configlist.sh
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
  echo "\n # $1 \nexport $1CONFIG=\$LOCALDOTFILES/config/$1config ; \nsource \$$1CONFIG/$1_config_env.sh">> env.sh
  echo "\n # $1 \nsource \$$1CONFIG/$1_config_aliases.sh" >> aliases.sh

  cd config/$1config
  echo "alias $1config=\"nvim \$$1CONFIG/$1_config_aliases.sh\" \nalias $1env=\"nvim \$$1CONFIG/$1_config_env.sh\" \nalias $1configdir=\"cd \$$1CONFIG\"">> $1_config_aliases.sh

  cd $LOCALDOTFILES
  deletelastline localconfiglist.sh
  echo "$1config">>localconfiglist.sh
  echo "'\"">>localconfiglist.sh

  source $HOME/.zshrc
  cd $CONFIG/$1config
}




