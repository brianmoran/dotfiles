
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
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plugin 'junegunn/fzf.vim'
Plugin 'w0rp/ale'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'valloric/youcompleteme'
Plugin 'Yggdroot/indentLine'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()  " required


filetype plugin indent on  " required

" use spacebar as leader
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
"set mouse-=a
set mouse=a

" enable syntax processing
syntax on

"
" UI
"

" show line numbers
"set number

" show relative line number
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

" always show statusline
set laststatus=2

" highlight cursorline
set cursorline

" cursor color
highlight Cursor guifg=#292d3e guibg=#ffcb6b 

" font GUI
set guifont=SauceCodePro\ Nerd\ Font\ Mono:h14


"
" Save and Quit
"

" save & quit
nnoremap <leader>wq :wq<cr>

" save
nnoremap <leader>w :w<cr>

" quit
nnoremap <leader>q :q<cr>


"
" Windows
"

" switch windows
nnoremap <c-w> <c-w>w


"
" Buffers
"

" switch buffers without saving
set hidden
nnoremap <tab> :bnext<cr>
nnoremap <s-tab> :bprevious<cr>


"
" Split
"

set splitright
set splitbelow

" split navigations
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

"
" Colors
"

set background=dark
colorscheme solarized


"
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

"
" Search
"

" search as you type
set incsearch

" highlight matches
set hlsearch

" remove highlighting
nnoremap <esc><esc> :nohlsearch<cr>


"
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

"
" JSON
"

" format json
com! FormatJSON %!python -m json.tool

"
" completeopt
"
set completeopt=longest,menuone


""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: ale
"
let g:ale_lint_on_text_changed = 'never'
let g:ale_completion_enabled = 1


""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: fzf
"

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


"""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: indentlines
"

let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2

"""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: nerdtree
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


""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: tagbar
"

nnoremap <c-m> :TagbarToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""
"  Plugin: vim-airline
"

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

"""""""""""""""""""""""""""""""""""""""""""""""
"
" Plugin: youcompleteme
"

nnoremap <leader>gd :YcmCompleter GoTo<CR>
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_autoclose_preview_window_after_completion=1



