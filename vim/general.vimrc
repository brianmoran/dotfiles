" enable termguicolors
if (has("termguicolors"))
 set termguicolors
endif

" set colorscheme
colorscheme night-owl

" lightline match colorscheme
let g:lightline = { 'colorscheme': 'nightowl' }

" system clipboard
set clipboard+=unnamed

" confirm unsaved changes before closing
set confirm

" font
set guifont=Hack\ Nerd\ Font:h14

" allow hidden buffers
set hidden

" increase undo limit
set history=1000

" ignore case when searching
set ignorecase

" incremental search that shows partial matches
set incsearch

" don't update screen during macros and script execution
set lazyredraw

" enable mouse support
set mouse=a

" vi compatibility off
set nocompatible

" ignore file's mode lines; use vimrc config instead
set nomodeline

" disable swap files
set noswapfile

" enable line numbers and relative line numbers
set number
set relativenumber

" auto switch to case-sensitive when search contains uppercase letter
set smartcase

" create splits to the right and to the bottom
set splitbelow
set splitright

" set window title to current edited file
set title

" lower updatetime
set updatetime=300

" display command line's tab complete options as a menu
set wildignore+=*.pyc,__pycache__/

set shiftwidth=2
set tabstop=2

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 smarttab expandtab

" check for changes on CursorHold
au cursorhold * checktime

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :stopinsert | endif

" don't continue comment on next line
au BufNewFile,BufRead * setlocal formatoptions-=cro

" format json
com! FormatJSON %!python -m json.tool<CR>

