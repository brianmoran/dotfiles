" leader is space
let mapleader = "\<Space>""

" fast write
" nnoremap <Leader>w<CR> :w<CR>

" fast close
" nnoremap <Leader>q<CR> <c-w>q

" save and close
" nnoremap <Leader>wq<CR> :wq<CR>

" outdent in visual and normal mode
xnoremap <s-tab> <gv

" indent in visual and normal mode
xnoremap <tab> >gv

" switch buffer
nnoremap <silent> <tab> :bnext<cr>

" switch buffer
nnoremap <silent> <s-tab> :bprevious<CR>

" delete buffer
nnoremap <silent> <Leader>bd :BD<CR>

" dont delete in normal mode
nmap <Del> <nop>

" deleting
nnoremap dd "_dd
nnoremap <leader>d "_dd
xnoremap <leader>d "_dd
xnoremap <leader>p "_dP

" clear highlighting
nnoremap <Leader>/ :nohl<CR>

" show history
nnoremap <Leader>h :History<CR>
