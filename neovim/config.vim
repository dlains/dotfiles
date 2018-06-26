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

" Also look in the .git directory for a tags file.
set tags+=.git/tags

" Neovim terminal key mappings.
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
end
