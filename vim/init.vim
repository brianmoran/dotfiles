set runtimepath^=/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

call plug#begin('~/.config/nvim/plugins')

Plug 'tpope/vim-sensible'

" Utility
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'yggdroot/indentline'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
Plug 'qpkorr/vim-bufkill'
Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-gutentags'
Plug 'jelera/vim-javascript-syntax'
Plug 'jiangmiao/auto-pairs'

" Themes
Plug 'morhetz/gruvbox'
Plug 'haishanh/night-owl.vim'
Plug 'itchyny/lightline.vim'

" Languages
" Plug 'sheerun/vim-polyglot'

if has('nvim')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

call plug#end()

source $HOME/repos/dotfiles/vim/general.vimrc
source $HOME/repos/dotfiles/vim/bindings.vimrc
source $HOME/repos/dotfiles/vim/plugins.vimrc
source $HOME/repos/dotfiles/vim/coc.vimrc

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
