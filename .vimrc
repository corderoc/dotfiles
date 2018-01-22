"==============================================================================
"   Pathogen
"==============================================================================

let g:pathogen_disabled = [] " for debugging
execute pathogen#infect()


"==============================================================================
"   Vim Settings
"==============================================================================

" Color Scheme
let g:solarized_termcolors = 256
let g:solarized_termtrans  = 1
let g:solarized_degrade    = 0
let g:solarized_bold       = 1
let g:solarized_underline  = 1
let g:solarized_italic     = 1
let g:solarized_contrast   = "high"
let g:solarized_visibility = "high"
set background=dark
colorscheme solarized
syntax enable

" Indentation, Spaces, and Tabs
filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8

" UI Config
set cursorline
set lazyredraw
set nocompatible
set noerrorbells
set number
set ruler
set scrolloff=5
set showcmd
set showmatch
set smartcase
set smarttab
set wildignore=*.pyc,*.so,*.o,*.pkl,*.png,*.pdf
set wildignorecase
set wildmenu
set wildmode=list:longest,full

" Searching
nnoremap <Enter> :set hlsearch!<CR>
set hlsearch!
set incsearch

" Movement
inoremap jk <esc>
nnoremap gW :tabclose!<cr>
nnoremap gh :tabprev<cr>
nnoremap gj :tabnext<cr>
nnoremap gt :tabnew<cr>
nnoremap gw :tabclose<cr>
noremap H I
noremap I {
noremap K }
noremap h <insert>
noremap h i
noremap i gk
noremap j <Left>
noremap k gj

" Edit Settings
set backspace=indent,eol,start
set directory=/tmp
set pastetoggle=<F2><F2>
set swapfile


"==============================================================================
"   Plugin Settings
"==============================================================================

" ctrlp
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

" lightline-vim
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'powerline',
    \ 'component': {
    \   'readonly': '%{&readonly?"⭤":""}',
    \ }
    \ }

" tmuxline
let g:tmuxline_powerline_separators = 0
let g:tmuxline_preset = {
    \ 'a' : '#(whoami)',
    \ 'x' : '%l:%M%P',
    \ 'y' : [ '%a %-e %b %Y'],
    \ 'z' : '#H'
    \ }

" vim-better-whitespace
autocmd BufEnter * EnableStripWhitespaceOnSave

" vim-notes
let g:notes_tab_indents = 0

" youcompleteme
let g:ycm_python_binary_path = 'python'


"==============================================================================
"==============================================================================
