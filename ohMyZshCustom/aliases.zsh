######################### Krew ####################################
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

############################################## PROTECTLINE INSTALL ###################
# General
alias egrep='egrep --color=auto' 
alias fgrep='fgrep --color=auto' 
alias grep='grep --color=auto' 

alias l.='ls -d .* --color=auto' 
alias ll='ls -ltrha' 
alias ls='ls --color=auto' 

alias fluxm='kubectl get deploy flux -o yaml |egrep -e "git-url|git-branch"|grep -v annotation'

alias k='kubectl'

alias kk='kubectl get pod'

alias kn='kubens'

alias kx='kubectx'

alias rvm-restart='rvm_reload_flag=1 source '\''/home/ec2-user/.rvm/scripts/rvm'\'''

alias vi='nvim' 

alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

alias ww='watch -n2 "kubectl get po"'

alias sealed-secrets-kubeseal-nsg='kubeseal'


############################################## Perso ###################
export PATH="$PATH:/opt/nvim/"

alias sudo='sudo '

alias dockerKillAll='sudo docker ps -aq | xargs sudo docker rm -f'


alias aliases="nvim $ZSH_CUSTOM/aliases.zsh"

alias home='cd $HOME'
alias dotfiles='cd $HOME/dotfiles/'
alias pro='cd $HOME/protectline/'

alias zz='source $HOME/.zshrc'
alias rc='nvim $HOME/.zshrc'

alias sudo='sudo '

alias pssh='ssh-add -D ; ssh-add ~/.ssh/id_ed25519'
alias assh='ssh-add -D ; ssh-add ~/.ssh/id_ed25519_pers'
alias ssha='ssh-agent zsh'

######## from protectline #############

# AWS

complete -C '/usr/local/bin/aws_completer' aws

alias awslogindev='aws sso login --profile PROTECTLINE-DEV-QA_Integrateur-098808187153 ; aws eks update-kubeconfig --name protectline-dev-qa --profile PROTECTLINE-DEV-QA_Integrateur-098808187153'
alias awsdevlogin='aws sso login --profile PROTECTLINE-DEV-QA_Integrateur-098808187153 ; aws eks update-kubeconfig --name protectline-dev-qa --profile PROTECTLINE-DEV-QA_Integrateur-098808187153'
alias loginawsdev='aws sso login --profile PROTECTLINE-DEV-QA_Integrateur-098808187153 ; aws eks update-kubeconfig --name protectline-dev-qa --profile PROTECTLINE-DEV-QA_Integrateur-098808187153'
alias logindevaws='aws sso login --profile PROTECTLINE-DEV-QA_Integrateur-098808187153 ; aws eks update-kubeconfig --name protectline-dev-qa --profile PROTECTLINE-DEV-QA_Integrateur-098808187153'
alias devawslogin='aws sso login --profile PROTECTLINE-DEV-QA_Integrateur-098808187153 ; aws eks update-kubeconfig --name protectline-dev-qa --profile PROTECTLINE-DEV-QA_Integrateur-098808187153'
alias devloginaws='aws sso login --profile PROTECTLINE-DEV-QA_Integrateur-098808187153 ; aws eks update-kubeconfig --name protectline-dev-qa --profile PROTECTLINE-DEV-QA_Integrateur-098808187153'

alias awsloginqa='aws sso login --profile PROTECTLINE-DEV-QA_Integrateur-098808187153 ;aws eks update-kubeconfig --name team-usages-qa --profile PROTECTLINE-DEV-QA_Integrateur-098808187153'
alias awsqalogin='aws sso login --profile PROTECTLINE-DEV-QA_Integrateur-098808187153 ;aws eks update-kubeconfig --name team-usages-qa --profile PROTECTLINE-DEV-QA_Integrateur-098808187153'
alias loginawsqa='aws sso login --profile PROTECTLINE-DEV-QA_Integrateur-098808187153 ;aws eks update-kubeconfig --name team-usages-qa --profile PROTECTLINE-DEV-QA_Integrateur-098808187153'
alias loginqaaws='aws sso login --profile PROTECTLINE-DEV-QA_Integrateur-098808187153 ;aws eks update-kubeconfig --name team-usages-qa --profile PROTECTLINE-DEV-QA_Integrateur-098808187153'
alias qaawslogin='aws sso login --profile PROTECTLINE-DEV-QA_Integrateur-098808187153 ;aws eks update-kubeconfig --name team-usages-qa --profile PROTECTLINE-DEV-QA_Integrateur-098808187153'
alias qaloginaws='aws sso login --profile PROTECTLINE-DEV-QA_Integrateur-098808187153 ;aws eks update-kubeconfig --name team-usages-qa --profile PROTECTLINE-DEV-QA_Integrateur-098808187153'

alias awsloginprod='aws sso login --profile USAGES-PROD_Integrateur-642160904842 ; aws eks update-kubeconfig --name team-usages-prod --profile USAGES-PROD_Integrateur-642160904842'


export BROWSER='/mnt/c/Program Files/Google/Chrome/Application'



