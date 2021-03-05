set runtimepath^=/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

call plug#begin('~/.config/nvim/plugins')

" Utility
Plug 'scrooloose/nerdtree'  " File tree
Plug 'preservim/nerdcommenter'  " Comments
Plug 'qpkorr/vim-bufkill'   " Leave window open
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'  "  Tag outline 
Plug 'yggdroot/indentline'  " Indent lines
Plug 'airblade/vim-gitgutter'   " Git in the gutter
Plug 'tpope/vim-fugitive'   " Git wrapper
Plug 'jiangmiao/auto-pairs'   " Insert or delete brackets, parens, quotes in pair
Plug 'christoomey/vim-tmux-navigator'   " Navigate tmux panes easier
Plug 'kassio/neoterm'   " Single term buffer
Plug 'szw/vim-maximizer'  " Maximize splits
Plug 'tpope/vim-sleuth'   " Infer spacing
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Themes
Plug 'drewtempelmeyer/palenight.vim'
Plug 'dracula/vim'
Plug 'fratajczak/one-monokai-vim'
Plug 'sainnhe/sonokai'

Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'nikvdp/ejs-syntax'
Plug 'moll/vim-node'  " Tools for working with node

" New plugins to try out
" Plug 'kyazdani42/nvim-tree.lua'
Plug 'mhinz/vim-startify'   " Startup screen
Plug 'nvim-lua/popup.nvim'  " Required for telescope
Plug 'nvim-lua/plenary.nvim'    " Required for telescope
Plug 'nvim-telescope/telescope.nvim'    " Find, filter, preview
" Plug 'voldikss/vim-floaterm'
Plug 'lilydjwg/colorizer'
Plug 'jelera/vim-javascript-syntax'

if has('nvim')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

call plug#end()

source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/bindings.vim
source $HOME/.config/nvim/plugins.vim
if has("nvim")
    source $HOME/.config/nvim/coc.vim
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

