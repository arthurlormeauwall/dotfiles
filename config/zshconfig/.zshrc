export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/go/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

source ~/dotfiles/aliases.sh
alias z="source ~/.zshrc"


export HOMEBREW_ARTIFACTORY_API_TOKEN=AKCp8mYe3uUVY42mxhSh9swvLHpcDf2FSktL4t9VpqmqrTktrecc9qWt8QLMwXpUyGDPA6LzT
export HOMEBREW_ARTIFACTORY_API_USER=arwall
export VAULT_TOKEN=hvs.CAESILDuEA9mU3rtvUfyk2rtz-J_Oq42R_C7gXgCA5aXwU3jGh4KHGh2cy5XUjBic3JwcTFLVk1GcWU3OVRYamVWWW4


#NVM
export PATH=$HOME/neovim/bin:$PATH
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
