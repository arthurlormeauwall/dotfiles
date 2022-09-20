
export DOT_FILES=~/.dotfiles
export ZSHCONFIG=$DOT_FILES/zshconfig
export ALIAS_DIR=$ZSHCONFIG/aliasdir
export VIMCONFIG=$DOT_FILES/vimconfig
export GITCONFIG=$DOT_FILES/gitconfig
export INTCONFIG=$DOT_FILES/intellijconfig
export JAVACONFIG=$DOT_FILES/javaconfig
export SDKMANCONFIG=$DOT_FILES/sdkmanconfig
export EGENCIACONFIG=$DOT_FILES/egenciaconfig
export VSCCONFIG=$DOT_FILES/vsconfig
chmod +x zshconfig/symlinkscript.sh 
chmod +x vimconfig/symlinkscript.sh
chmod +x gitconfig/symlinkscript.sh
./zshconfig/symlinkscript.sh
./vimconfig/symlinkscript.sh
./gitconfig/symlinkscript.sh


