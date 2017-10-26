
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
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
"Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'majutsushi/tagbar'
call vundle#end()  " required


filetype plugin indent on  " required


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Configuration
"

" map leader key to <space>
let mapleader="\<space>"

" osx backspace fix
set backspace=indent,eol,start

" swapfiles are bad
set noswapfile

" match parens
hi MatchParen cterm=none ctermbg=none ctermfg=magenta

" mouse support
set mouse=a

" enable syntax processing
syntax on


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

set cursorline


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Save and Quit
"

" save & quit
nnoremap <leader>wq :wq<cr>

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
" Buffers
"

:nnoremap <tab> :bnext<cr>
:nnoremap <s-tab> :bprevious<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Split
"

set splitright
set splitbelow

" split navigations
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors

set background=dark
set termguicolors
colorscheme quantum


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spaces and Tabs
"

" number of visual spaces per <tab>
set tabstop=4

" number of spaces in tab when editing
set softtabstop=4

" tabs are spaces
set expandtab


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
"                         PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



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
"let g:jedi#show_call_signatures="2"


" Pop up menu colors
"hi Pmenu ctermbg=blue ctermfg=black
"hi PmenuSel ctermbg=black ctermfg=blue


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree
"

" don't open automatically
let g:NERDTreeHijackNetrw=0

" close after opening a file
let NERDTreeQuitOnOpen=1

" ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']
nmap <c-n> :NERDTreeToggle<cr>

" close if nerdtree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


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
" TagBar
"

nmap <c-m> :TagbarToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  vim-airline
"

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe
"

nmap <leader>d :YcmCompleter GoToDefinition<CR>






