set runtimepath^=/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

call plug#begin('~/.config/nvim/plugins')

" Utility
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'yggdroot/indentline'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
Plug 'qpkorr/vim-bufkill'
Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-gutentags'
Plug 'jiangmiao/auto-pairs'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'vimlab/split-term.vim'

" Themes
Plug 'morhetz/gruvbox'
Plug 'haishanh/night-owl.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'romainl/flattened'
Plug 'vim-airline/vim-airline'

" Language Specific
Plug 'sheerun/vim-polyglot'
Plug 'moll/vim-node'

if has('nvim')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

call plug#end()

source $HOME/repos/dotfiles/vim/general.vimrc
source $HOME/repos/dotfiles/vim/bindings.vimrc
source $HOME/repos/dotfiles/vim/plugins.vimrc
if has("nvim")
    source $HOME/repos/dotfiles/vim/coc.vimrc
endif

" ---------------------------------------------------------------------
" FUNCTIONS
" ---------------------------------------------------------------------
function! ToggleSyntax()
    if (exists("g:syntax_on"))
        syntax off
    else
        syntax enable
    endif
endfunction

function! ToggleMouse()
    if &mouse == 'a'
        set mouse=
    else
        set mouse=a
    endif
endfunction

