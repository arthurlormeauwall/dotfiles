mv ~/.zshrc ~/.oldzshrc
ln -s ~/dotfiles/config/zshconfig/.zshrc ~/.zshrc
cd ~/
mkdir localdotfiles
cd localdotfiles
mkdir config
touch aliases.sh
touch env.sh

