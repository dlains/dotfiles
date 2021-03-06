" minpac instructions
"
"   add a new plugin:
"     add a line below that calls minpac#add with the github user name and
"     plugin name.
"
"     call minpac#add('user/plugin')
"
"     save the file, restart Neovim and then run :PackUpdate
"
"   remove a plugin:
"     remove the line that defines the plugin, the call minpac#add('user/plugin')
"     line.
"
"     save the file, restart Neovim and then run :PackClean
"
"   update help after plugin addition or removal:
"     :helptags ALL


" Load the minpac plugin manager.
packadd minpac
call minpac#init()

" Setup handy package commands.
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

" Load the one colorscheme.
call minpac#add('rakr/vim-one')
let g:airline_theme="one"
colorscheme one
set background=dark

" Load the vim-commentary plugin.
call minpac#add('tpope/vim-commentary')

" Add vim-airline plugin.
call minpac#add('vim-airline/vim-airline')

" Add Ruby and Rails plugins.
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('tpope/vim-rails')
call minpac#add('danchoi/ri.vim')
