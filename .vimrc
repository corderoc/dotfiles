execute pathogen#infect()
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" Spaces and Tabs
filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Swap-file
set swapfile
set dir=~/tmp

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

" Movement
noremap h <insert>
noremap i gk
noremap j <Left>
noremap k gj
noremap h i
noremap H I
inoremap jk <esc>
noremap I {
noremap K }

" set runtimepath^=~/.vim/bundle/ctrlp.vim

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_prompt_mappings = {
    \ 'PrtSelectMove("j")':   ['<c-k>', '<down>'],
    \ 'PrtSelectMove("k")':   ['<c-i>', '<up>'],
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>', '<c-j>'],
    \ }
let g:ctrlp_custom_ignore = '\v[\/](env|node_modules|examples|selenium|*.pyc)'

" lightline-vim settings
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'powerline',
    \ 'component': {
    \   'readonly': '%{&readonly?"⭤":""}',
    \ }
    \ }

" tmuxline settings
let g:tmuxline_powerline_separators = 0
let g:tmuxline_preset = {
    \ 'a' : '#(whoami)',
    \ 'x' : '%l:%M%P',
    \ 'y' : [ '%a %-e %b %Y'],
    \ 'z' : '#H'
    \ }

" vim-notes settings
let g:notes_tab_indents = 0

" Switching Tabs
nnoremap gj :tabnext<cr>
nnoremap gh :tabprev<cr>
nnoremap gw :tabclose<cr>
nnoremap gW :tabclose!<cr>
nnoremap gt :tabnew<cr>

" Make backspace work like backspace
set backspace=indent,eol,start

" Toggle removing of search highlighting after search
set hlsearch!
nnoremap <Enter> :set hlsearch!<CR>

" edit the cursor
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0

" move all .swp files to a specific folder
set swapfile
set dir=/tmp

" remove all trailing whitespace on save
autocmd BufEnter * EnableStripWhitespaceOnSave
