function installApplicationsDebian {
  echo "install applications for debian"

  echo "install oh-my-zsh"

  echo "install neovim"

  echo "install tmux"

  echo "install alacritty"

}

function installApplicationsMac {
  echo "install applications for mac os"

 ##########################
  echo "install homebrew"

  brewTestOutput=$(brew --version)
  if [ $brewTestOutput = "zsh: command not found: brew" ]
  then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    echo "homebrew already installed"
  fi

 ##########################
  echo "install oh-my-zsh"
  omzTestOutput=$(cd $HOME/.oh-my-zsh/)
  if [ $omzTestOutput ]
  then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  else
    echo "oh-my-zsh already installed"
  fi

 ##########################
  echo "install neovim"


 ##########################
  echo "install tmux"


 ##########################
  echo "install alacritty"

}

function sourceEnv {
  echo "source common env in $HOME/dotfiles/config/commonconfig/common_config_env.sh"
  source $HOME/dotfiles/config/commonconfig/common_config_env.sh
}

function sourceAll {
  source $HOME/.zshrc
  echo "source all zsh config $HOME/.zshrc"
}

function setSymlink {
  echo "Set symlink"
  rm -rf ~/.zshrc
  rm -rf ~/.config/tmux/
  rm -rf ~/.config/alacritty/
  rm -rf ~/.config/nvim/

  ln -s $ZSHCONFIG/.zshrc ~/.zshrc
  ln -s $alacrittyCONFIG/alacritty  ~/.config/alacritty
  ln -s $tmuxCONFIG/tmux ~/.config/tmux
  ln -s $NVIMCONFIG/nvim ~/.config/nvim
}

function setlocaldotfiles {
  echo "create localdotfiles, if $HOME/localdotfiles already exist, rename it to oldlocaldotfiles"
  cd ~/
  mv localdotfiles oldlocaldotfiles
  mkdir localdotfiles
  cd localdotfiles
  mkdir config
  touch aliases.sh
  touch env.sh
}

