noremap e b
noremap r e
noremap <S-y> y
noremap y "0y
noremap p "0p
noremap <A-p> "0P"
nnoremap <C-p> p
nnoremap <C-v> V
nnoremap V <C-v>

nnoremap <A-d> <C-d>zz
nnoremap <A-u> <C-u>zz
nnoremap <A-j> 3j
nnoremap <A-k> 3k

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
