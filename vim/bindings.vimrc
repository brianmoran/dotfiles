" leader is space
let mapleader = "\<Space>""

" fast write
nnoremap <Leader>w<CR> :w<CR>

" fast close
nnoremap <Leader>q<CR> :q<CR>

" save and close
nnoremap <Leader>wq<CR> :wq<CR>

" outdent in visual and normal mode
xnoremap <s-tab> <gv

" indent in visual and normal mode
xnoremap <tab> >gv

" switch buffer
nnoremap <silent> <tab> :bnext<cr>

" switch buffer
nnoremap <silent> <s-tab> :bprevious<CR>

" delete buffer
nnoremap <silent> <Leader>bd<CR> :BD<CR>

" disable dd register
nnoremap dd "_dd 

" open terminal on ctrl+n
nnoremap <c-n> :call OpenTerminal()<CR>

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

function! OpenTerminal()
  split term://fish
  resize 10
endfunction
