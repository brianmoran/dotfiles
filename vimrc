set nocompatible			" required
filetype off				" required

" set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'vim-airline/vim-airline'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'blueshirts/darcula'

call vundle#end()			    " required
filetype plugin indent on       " required

" Mouse
" set mouse=a

" Leader Shortcuts
let mapleader="\<space>"
nnoremap <leader>w :w<cr>:source %<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>wq :wq!<cr>


" Colors
colorscheme darcula
syntax enable					" enable syntax processing


" Spaces & Tabs
set tabstop=4					" number of visual spaces per <tab>
set softtabstop=4				" number of spaces in tab when editing
set expandtab					" tabs are spaces


" UI Config
set number					    " show line numbers
set showcmd					    " show command in bottom bar
set wildmenu					" visual autocomplete for command menu
set lazyredraw					" redraw only when needed
set showmatch					" highlight matching brackets
let g:airline_powerline_fonts=1
set laststatus=2


" Searching
set incsearch					"search as characters are entered
set hlsearch					" highlight matches
nnoremap <esc><esc> :nohlsearch<cr>	" turn off search highlight


" CtrlP
let g:ctrlp_match_window='bottom,order:ttb'
let g:ctrlp_switch_buffer=0
let g:ctrlp_working_path_mode=0


" NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
nnoremap <c-t> :NERDTreeToggle<cr>


" Python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set encoding=utf-8 |
    \ let g:ycm_autoclose_preview_window_after_completion=1 |
    \ map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR> |
    \ let python_highlight_all=1 |
    \ syntax on


py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
