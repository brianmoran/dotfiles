" enable termguicolors
if (has("termguicolors"))
    set termguicolors
endif

" set colorscheme
" colorscheme night-owl
" colorscheme flattened_dark
colorscheme palenight
" colorscheme gruvbox

" attempt to fix guibg color in night-owl
" if g:colors_name == 'night-owl'
"   hi Normal guifg=#d6deeb ctermfg=253 guibg=011627 ctermbg=233 gui=NONE cterm=NONE
"   hi SignColumn guifg=NONE ctermfg=NONE guibg=011627 ctermbg=233 gui=NONE cterm=NONE
"   hi LineNr guifg=#444444 ctermfg=238 guibg=011627 ctermbg=233 gui=NONE cterm=NONE
"   hi EndOfBuffer guifg=#444444 ctermfg=238 guibg=011627 ctermbg=233 gui=NONE cterm=NONE
" endif

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
au BufNewFile,BufRead * setlocal formatoptions-=cro

" format json
com! FormatJSON %!python -m json.tool<CR>

" folding
set foldmethod=syntax
let javaScript_fold=1
set foldlevelstart=99

set tabstop=4|set shiftwidth=4|set expandtab

" autocmd FileType javascript setlocal ts=4 sts=4 sw=4
autocmd FileType javascript,typescript,json,vue,yaml set tabstop=2|set shiftwidth=2|set expandtab

