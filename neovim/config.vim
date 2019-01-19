" Add line numbers by default.
set number

" Enable moving to another buffer without saving the current buffer.
set hidden

" Keep more context around cursor when at the bottom of the buffer.
set scrolloff=5

" Set full color mode.
set termguicolors

" Spaces & Tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent

" Buffer list shortcuts
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" Setup Mapping for Project Wide Search.
" First enable the mapleader and set it to the comma key.
let mapleader=","

" Now create the <Leader>f mapping. This will use the :grep ex
" command to search recursively from the current directory,
" but skipping excluded directories for the current word.
nnoremap <silent> <Leader>f :grep! -Rin --exclude-dir={.git,node_modules,tmp,log} <cword> .<Cr>:cw<Cr>

" Make a command to open a reference file in a vertical split pane.
:command -nargs=1 -bar -complete=file Vref :rightbelow :vsplit <args> | :wincmd h
" Similar command to open a reference file in a horizontal split pane.
:command -nargs=1 -bar -complete=file Ref :rightbelow :split <args> | :wincmd k

" Also look in the .git directory for a tags file.
set tags+=.git/tags

" Neovim terminal key mappings. Allows for <Esc> to exit
" insert mode in a Neovim terminal buffer. Use <Ctrl-v><Esc>
" to send an <Esc> through to the terminal.
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
end
