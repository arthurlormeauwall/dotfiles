function installConfig {
  source install-util.sh
  sourceEnv
  #setSymlink
  #setlocaldotfiles


if [ $1 = "debian" ]
then
 installApplicationsDebian
elif [ $1 = "mac" ]
then
 installApplicationsMac
fi

  sourceAll
}

