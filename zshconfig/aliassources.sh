if [ -r $ZSHCONFIG/zshcommonalias ]; then
    source $ZSHCONFIG/zshcommonalias        #Common 
fi
if [ -r $ZSHCONFIG/zshalias ]; then
    source $ZSHCONFIG/zshalias        #zsh 
fi
if [ -r $VIMCONFIG/valias ]; then
    source $VIMCONFIG/valias           #Vim 
fi
if [ -r $GITCONFIG/gitalias ]; then
    source $GITCONFIG/gitalias            #Git 
fi
if [ -r $JAVACONFIG/javaalias ]; then
    source $JAVACONFIG/javaalias            #Java
fi
if [ -r $SDKMANCONFIG/sdkmanconfig ]; then
    source $SDKMANCONFIG/sdkmanconfig            #SDK man 
fi
if [ -r $INTCONFIG/intalias ]; then
    source $INTCONFIG/intalias            #Intellij 
fi
if [ -r $EGENCIACONFIG/egealias ]; then
    source $EGENCIACONFIG/egealias    #Egencia 
fi
