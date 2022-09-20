if [ -r ~/.zshrc ]; then
echo doNothing on zshrc
else
ln -s $ZSHCONFIG/.zshrc ~/.zshrc
fi
