mv ~/.zshrc ~/.oldzshrc
mv ~/.config/tmux/ ~/.config/old-tmux
mv ~/.config/alacritty ~/.config/old-alacritty
mv ~/.config/nvim ~/.config/odl-nvim

ln -s ~/dotfiles/config/zshconfig/.zshrc ~/.zshrc
ln -s ~/dotfiles/config/alacrittyconfig/alacritty  ~/.config/alacritty
ln -s ~/dotfiles/config/tmuxconfig/tmux ~/.config/tmux
ln -s ~/dotfiles/config/vimconfig/nvim ~/.config/nvim

#cd ~/
#mkdir localdotfiles
#cd localdotfiles
#mkdir config
#touch aliases.sh
#touch env.sh

