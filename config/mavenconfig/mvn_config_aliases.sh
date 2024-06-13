alias mvnconfig='nvim $MAVENCONFIG/mvn_config_aliases.sh'
alias mvnconfigdir='cd $MAVENCONFIG'
alias mvnenv='nvim $MAVENVCONFIG/mvn_config_env.sh'

alias m='mvn clean install;'	
alias mp='mvn --quiet clean install -Plocal ;'
alias msbr='mvn spring-boot:run'
alias mpurgeandcleaninstall='mvn dependency:purge-local-repository -Dinclude:com.googlecode.owasp-java-html-sanitizer -DresolutionFuzziness=groupId -Dverbose ; mvn clean install'

function rsruntest {
  mvn verify -B -f $1 -Plocal -Dit.test=$2 failsafe:integration-test
}

function rsdebugtest {
 mvn verify -B -f $1 -Pmaui -Dit.test=$2 failsafe:integration-test -Dmaven.failsafe.debug
}
