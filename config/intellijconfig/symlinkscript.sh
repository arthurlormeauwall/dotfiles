
if [ -r ~/.ideavimrc ]; then
echo doNothing on jetbrains  dir config
else
ln -s $INTCONFIG/.ideavimrc ~/.ideavimrc
fi
