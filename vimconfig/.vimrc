set relativenumber
noremap w b
noremap b w
noremap e b
noremap r e
imap jk <ESC>
noremap <SPACE> <ESC>
noremap ù *
nnoremap <C-j> 3j
nnoremap <C-k> 3k
noremap y "0y
noremap p "0p
nnoremap <C-p> p

" Relative or absolute number lines
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
