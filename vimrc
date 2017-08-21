
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Setup
"

set nocompatible  " required
filetype off  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
call vundle#end()  " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Configuration
"

filetype plugin indent on  " required

" match parens
hi MatchParen cterm=none ctermbg=none ctermfg=magenta

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mouse
"

set mouse=a


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader
"

" map leader key to <space>
let mapleader="\<space>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Save and Quit
"

" save
nnoremap <leader>w :w<cr>

" quit
nnoremap <leader>q :q<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Windows
"

" switch windows
nnoremap <c-w> <c-w>w

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Split
"

set splitright
set splitbelow

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffers
"

" previous buffer
nnoremap < :bp<cr>

" next buffer
nnoremap > :bn<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors
"

set background=dark


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax
"

" enable syntax processing
syntax on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spaces and Tabs
"

" number of visual spaces per <tab>
set tabstop=4

" number of spaces in tab when editing
set softtabstop=4

" tabs are spaces
set expandtab


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI
"

" show line numbers
set number

" show command in bottom bar
set showcmd

" visual autocomplete for command menu
set wildmenu

set wildignore+=*.pyc

" redraw only when needed
set lazyredraw

" highlight matching brackets
set showmatch

set laststatus=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
"

" search as you type
set incsearch

" highlight matches
set hlsearch

" remove highlighting
nnoremap <esc><esc> :nohlsearch<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs
"

"map <c-t> :tabnew<cr>
"map <leader>t :tabnext<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
"

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set encoding=utf-8 |

let python_highlight_all=1
syntax on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ctrlp
"

let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_match_window='bottom,order:ttb'
let g:ctrlp_switch_buffer=0
let g:ctrlp_working_path_mode=0
let g:ctrlp_custom_ignore='\v[\/]\.(pyc)$'
let g:ctrlp_by_filename=1
let g:ctrlp_open_multiple_files = '2h'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  jedi
"

" dont show docstring completion at top
"autocmd FileType python setlocal completeopt-=preview
let g:jedi#show_call_signatures="2"


" Pop up menu colors
hi Pmenu ctermbg=blue ctermfg=black
hi PmenuSel ctermbg=black ctermfg=blue

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  syntastic
"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes':   [],'passive_filetypes': [] }
let g:syntastic_python_flake8_args="--ignore=E501"

" debug syntastic
"let g:syntastic_debug = 3

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  vim-airline
"

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree
"

" don't open automatically
let g:NERDTreeHijackNetrw=0

" close after opening a file
let NERDTreeQuitOnOpen=1

" ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']
map <c-n> :NERDTreeToggle<cr>

" Close if nerdtree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


