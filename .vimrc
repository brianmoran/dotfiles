
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Setup
"

set nocompatible  " required
filetype off  " required
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'  "theme
Plugin 'majutsushi/tagbar'
Plugin 'yggdroot/indentline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ap/vim-buftabline'
Plugin 'fatih/vim-go'
Plugin 'valloric/youcompleteme'
call vundle#end()  " required


filetype plugin indent on  " required

let mapleader=" "

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" osx backspace fix
set backspace=indent,eol,start

" swapfiles are bad
set noswapfile

" match parens
hi MatchParen cterm=none ctermbg=none ctermfg=magenta

" mouse support/ system clipboard
set mouse-=a

" enable syntax processing
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI
"

" show line numbers
"set number

" shoe relative line number
"set relativenumber

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

" font GUI
set guifont=Knack\ Nerd\ Font:h12

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

" switch buffers without saving
set hidden
nnoremap <tab> :bnext<cr>
nnoremap <s-tab> :bprevious<cr>

com! FormatJSON %!python -m json.tool
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
colorscheme gruvbox


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spaces and Tabs
"

" number of visual spaces per <tab>
set tabstop=4

" number of spaces in tab when editing
set softtabstop=4

" tabs are spaces
set expandtab

set autoindent
set smartindent
set shiftwidth=4
set noexpandtab

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
au BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


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


