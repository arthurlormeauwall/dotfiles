--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--
--   command_mode = "c",
--
--
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }
--Local
-- Shorten function name
local keymap = vim.api.nvim_set_keymap
--my own key maps :)
  
vim.cmd([[
set relativenumber
noremap e b
noremap r e
noremap <S-y> y
noremap y "0y
noremap p "0p
noremap <A-p> "0P"
nnoremap <C-p> p
nnoremap <C-v> V
nnoremap V <C-v>

nnoremap ∂ <C-d>zz
nnoremap º <C-u>zz
nnoremap Ï 3j
nnoremap È 3k

imap jk <ESC>
vmap ui <ESC>

vmap <S-j> :m .+1<CR>==
vmap <S-k> :m .-2<CR>==
vmap <C-j> <gv
vmap <C-k> >gv

syntax on
function! NumberToggle()
  if(&nu == 1)
      set nu!
      set rnu
  else
      set nornu
      set nu
  endif
endfunction
nnoremap <C-n> :call NumberToggle()<CR>
]])

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)
keymap("n", "<leader>o", "o<ESC>", opts)
keymap("n", "<leader>O", "O<ESC>", opts)
keymap("n", "<leader>c", ":set ignorecase! ignorecase?<CR>", opts)
-- Resize with arrows
keymap("n", "<S-Right>", ":resize +2<CR>", opts)
keymap("n", "<S-Left>", ":resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
