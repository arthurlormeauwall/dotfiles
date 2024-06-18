alias javaconfig="nvim $javaCONFIG/java_config_aliases.sh" 
alias javaenv="nvim $javaCONFIG/java_config_env.sh" 
alias javaconfigdir="cd $javaCONFIG"

# $1 : cert name ex = mycert
# $2 : location
function importcert {
  keytool -import -trustcacerts -keystore ~/.sdkman/candidates/java/current/lib/security/cacerts -storepass changeit -noprompt -alias $1 -file $2
}
