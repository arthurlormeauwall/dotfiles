function installApplicationsDebian {
  echo "install applications for debian"

 ##########################
  echo "install oh-my-zsh"
  omzTestOutput=$(cd $HOME/.oh-my-zsh/)
  if [ $omzTestOutput ]
  then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  else
    echo "oh-my-zsh is already installed"
  fi

 ##########################
  echo "install neovim"
  nvimTestOutput=$(nvim --version)
  if [ $nvimTestOutput = "zsh: command not found: nvim" ]
  then
    sudo apt-get install neovim
  else
    echo "neovim is already installed"
  fi

 ##########################
  echo "install tmux"
  tmuxTestOutput=$(tmux --version)
  if [ $tmuxTestOutput = "zsh: command not found: tmux" ]
  then
    sudo apt-get install tmux
  else
    echo "tmux is already installed"
  fi

 ##########################
  echo "install alacritty"
  sudo apt-get install cargo
  cargo install alacritty
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
    echo "homebrew is already installed"
  fi

 ##########################
  echo "install oh-my-zsh"
  omzTestOutput=$(cd $HOME/.oh-my-zsh/)
  if [ $omzTestOutput ]
  then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  else
    echo "oh-my-zsh is already installed"
  fi

 ##########################
  echo "install neovim"
  nvimTestOutput=$(nvim --version)
  if [ $nvimTestOutput = "zsh: command not found: nvim" ]
  then
    brew install neovim
  else
    echo "neovim is already installed"
  fi

 ##########################
  echo "install tmux"
  tmuxTestOutput=$(tmux --version)
  if [ $tmuxTestOutput = "zsh: command not found: tmux" ]
  then
    brew install tmux
  else
    echo "tmux is already installed"
  fi

 ##########################
  echo "install alacritty"
  brew install --cask alacritty
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

