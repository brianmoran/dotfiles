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
Plug 'mileszs/ack.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
Plug 'qpkorr/vim-bufkill'
Plug 'tpope/vim-fugitive'

" Themes
Plug 'morhetz/gruvbox'
Plug 'haishanh/night-owl.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'itchyny/lightline.vim'

" Languages
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-python/python-syntax' "syntax highlighting
Plug 'hashivim/vim-terraform'

if has('nvim')
    Plug 'neoclide/coc.nvim', {'branch': 'master'}
endif

call plug#end()

source $HOME/repos/brianmoran/dotfiles/vim/general.vimrc
source $HOME/repos/brianmoran/dotfiles/vim/bindings.vimrc
source $HOME/repos/brianmoran/dotfiles/vim/plugins.vimrc

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
