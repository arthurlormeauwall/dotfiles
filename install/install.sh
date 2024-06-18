function installConfig {
  source install-util.sh
  sourceEnv

  if [ $1 = "debian" ]
  then
    installApplicationsDebian
  elif [ $1 = "mac" ]
  then
    installApplicationsMac
  fi

  #setSymlink
  #setlocaldotfiles
  sourceAll
}

