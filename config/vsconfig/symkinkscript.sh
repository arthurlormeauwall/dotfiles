if [ -r ~/.vscode/argv.json ]; then
echo doNothing on vscode dir config
else
ln -s $VSCONFIG/argv.json ~/.vscode/argv.json
fi
