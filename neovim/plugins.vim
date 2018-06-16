" Load the minpac plugin manager.
packadd minpac
call minpac#init()

" Load the one colorscheme.
call minpac#add('rakr/vim-one')
let g:airline_theme="one"
colorscheme one
set background=dark
