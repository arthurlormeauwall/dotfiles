alias vimconfig='nvim $NVIMCONFIG/nvim_config_aliases.sh'
alias vimconfigdir='cd $NVIMCONFIG'
alias vimenv='nvim $NVIMCONFIG/nvim_config_env.sh'

alias vk='nvim .'
alias v='nvim'
alias vimkeymap="cd $NVIMCONFIG/nvim/lua/user"
alias setMacVimKeybinding="cat $NVIMCONFIG/nvim/lua/user/keymaps_mac.lua >$NVIMCONFIG/nvim/lua/user/keymaps.lua"
alias setPcVimKeybinding="cat $NVIMCONFIG/nvim/lua/user/keymaps_pc.lua > $NVIMCONFIG/nvim/lua/user/keymaps.lua"

alias vimtheme="nvim $NVIMCONFIG/nvim/lua/user/theme.lua"
alias vimplugin="nvim $NVIMCONFIG/nvim/lua/user/plugins.lua"
alias vimoption="nvim $NVIMCONFIG/nvim/lua/user/options.lua"

#kickstart (cf : https://github.com/nvim-lua/kickstart.nvim/tree/master)
alias vimk='NVIM_APPNAME="nvim-k" nvim'
