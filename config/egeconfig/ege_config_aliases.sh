alias egeconfig="nvim $EGECONFIG/ege_config_aliases.sh"
alias egeenv="nvim $EGECONFIG/ege_config_env.sh"
alias egeconfigdir="cd $EGECONFIG"

alias logaws="hip -e lab aws-creds -u alorme;" 
alias logaws2="eval /"$(hip -e lab aws configure export-credentials --format env)/""

