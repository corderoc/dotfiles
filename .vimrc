execute pathogen#infect()
syntax enable
colorscheme molokai
set background=dark

" Spaces and Tabs
filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" UI Config
set nocompatible
set ruler
set number
set showcmd
set cursorline
set wildmenu	     " allows for an autocomplete graphical menu to appear
set lazyredraw
set showmatch
set noerrorbells
set smarttab
set smartcase

" Searching
set incsearch
set hlsearch
nnoremap ,<space> :nohlsearch<CR>
cd ~/Monolith/

" Movement
map h <insert>
map i <Up>
map j <Left>
map k <Down>
noremap h i
noremap H I
inoremap jk <esc>
noremap I {
noremap K }

set runtimepath^=~/.vim/bundle/ctrlp.vim

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_prompt_mappings = {
    \ 'PrtSelectMove("j")':   ['<c-k>', '<down>'],
    \ 'PrtSelectMove("k")':   ['<c-i>', '<up>'],
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>', '<c-j>'],
    \ }
let g:ctrlp_custom_ignore = '\v[\/](examples|selenium|deps|*.pyc)'

" Switching Tabs 
nnoremap gj :tabnext<cr>
nnoremap gh :tabprev<cr>
nnoremap gw :tabclose<cr>
nnoremap gW :tabclose!<cr>
nnoremap gt :tabnew<cr>

" Make backspace work like backspace
set backspace=indent,eol,start

" Highlight rows that are over 80 characters
" set colorcolumn=80
" highlight ColorColumn ctermbg=red

" Toggle removing of search highlighting after search
set hlsearch!
nnoremap <Enter> :set hlsearch!<CR>
