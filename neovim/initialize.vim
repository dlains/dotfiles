set number

" Spaces & Tabs {{{
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent
" }}} Spaces & Tabs

" Buffer list shortcuts
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" Also look in the .git directory for a tags file.
set tags+=.git/tags

set termguicolors

" Load the minpac plugin manager.
packadd minpac
call minpac#init()

" Load the one colorscheme.
call minpac#add('rakr/vim-one')
let g:airline_theme="one"
colorscheme one
set background=dark
