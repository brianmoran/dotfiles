" ---------------------------------------------------------------------
" COC
"
let g:coc_global_extensions = [
						\ 'coc-json',
						\ 'coc-python',
						\ 'coc-lists',
						\ 'coc-yaml']
set shortmess+=c

if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> <c-k> :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
"vmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

" List buffers
nnoremap <silent> <leader>b  :<C-u>CocList buffers<CR>
nnoremap <silent> <leader>f :CocAction quickfix<CR>

" ---------------------------------------------------------------------
" LANGUAGE: GO
"
let s:tlist_def_go_settings = 'go;g:enum;s:struct;u:union;t:type;' .
                           \ 'v:variable;f:function'
" ctags for go
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }


" ---------------------------------------------------------------------
" VIM-GO
"

" use golang language server
let g:go_def_mode="gopls"
let g:go_info_mode="gopls"

" highlighters
let g:go_def_mapping_enabled = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"  " use goimports to auto insert import paths instead of gofmt
let g:go_fmt_autosave = 1   " disable gofmt on save


" ---------------------------------------------------------------------
" FZF
"
" augroup fzf
"   autocmd!
"   autocmd! FileType fzf
"   autocmd  FileType fzf set laststatus=0 noshowmode noruler
"     \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
" augroup END
"
" tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"
if has("nvim")
  au TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
  " au FileType fzf tunmap <buffer> <Esc>
endif

nnoremap <C-p> :FZF<CR>
" if has("nvim")
"   au TermOpen * tnoremap <Esc> <c-\><c-n>
"   au FileType fzf tunmap <Esc>
" endif


" ---------------------------------------------------------------------
" INDENTLINE
"
let g:indentLine_enabled = 1
autocmd Filetype json let g:indentLine_enabled = 0
" fix for go
set list lcs=tab:\|\ 


" ---------------------------------------------------------------------
" NERDTREE
"
nnoremap <C-b> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '__pycache__$']
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 0

" open nerdtree when calling vim with no arguments
"autocmd vimenter * if !argc() | NERDTree | endif

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" ---------------------------------------------------------------------
" NERDCOMMENTER
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


" ---------------------------------------------------------------------
" TAGBAR
"
map <Leader>tt<CR> :TagbarToggle<CR>


" ---------------------------------------------------------------------
" VIM-PYTHON
"
let g:python_highlight_all=1


" --------------------------------------------------
" VIM-TERRAFORM
"
let g:terraform_align=1
let g:terraform_fmt_on_save=1
