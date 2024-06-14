alias vimconfig='nvim $NVIMCONFIG/nvim_config_aliases.sh'
alias vimconfigdir='cd $NVIMCONFIG'
alias vimenv='nvim $NVIMCONFIG/nvim_config_env.sh'

alias vk='nvim .'
alias v='nvim'
alias vimkeymap="cd $NVIMCONFIG/nvim/lua/user"
alias setMacVimKeybinding="cat $NVIMCONFIG/nvim/lua/user/keymaps_mac.lua >$NVIMCONFIG/nvim/lua/user/keymaps.lua"
alias setPcVimKeybinding="cat $NVIMCONFIG/nvim/lua/user/keymaps_pc.lua > $NVIMCONFIG/nvim/lua/user/keymaps.lua"

#kickstart (cf : https://github.com/nvim-lua/kickstart.nvim/tree/master)
alias nvim-kickstart='NVIM_APPNAME="nvim-kickstart" nvim'
