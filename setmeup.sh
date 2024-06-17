rm -rf ~/.zshrc 
rm -rf ~/.config/tmux/     
rm -rf ~/.config/alacritty 
rm -rf ~/.config/nvim      

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

