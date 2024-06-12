alias logaws="hip -e lab aws-creds -u alorme;" 
alias logaws2="eval /"$(hip -e lab aws configure export-credentials --format env)/""

  #ssh
alias egessh='ssh-add -D ; ssh-add ~/.ssh/id_ed25519'
alias persssh='ssh-add -D ; ssh-add ~/.ssh/id_ed255119_pers'
