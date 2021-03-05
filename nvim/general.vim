" enable termguicolors
if (has("termguicolors"))
    set termguicolors
endif

" set colorscheme
" colorscheme dracula
" colorscheme palenight
colorscheme one-monokai
" colorscheme sonokai

" highlight current line
set cursorline

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
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
:augroup END

" auto switch to case-sensitive when search contains uppercase letter
set smartcase

" create splits to the right and to the bottom
set splitbelow
set splitright

" lower updatetime
set updatetime=300

" display command line's tab complete options as a menu
set wildignore+=*.pyc,__pycache__/

" check for changes on CursorHold
au cursorhold * checktime

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :stopinsert | endif

" don't continue comment on next line
set formatoptions-=cro

" format json
com! FormatJSON %!python -m json.tool<CR>

" folding
set foldmethod=syntax
let javaScript_fold=1
set foldlevelstart=99

set expandtab| set tabstop=2| set shiftwidth=2

" autocmd FileType javascript,typescript,json,vue,yaml call SetIndent()
" com! SetIndent :call SetIndent()
" function! SetIndent()
"     set tabstop=2|set shiftwidth=2|set expandtab
" endfunction

