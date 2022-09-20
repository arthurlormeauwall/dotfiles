
if [ -r ~/.config/JetBrains ]; then
echo doNothing on jetbrains  dir config
else
ln -s $INTCONFIG/JetBrains ~/.config/JetBrains
fi
