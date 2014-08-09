"
set nocompatible ruler laststatus=2 showcmd showmode modelines=0
set encoding=utf-8
set scrolloff=3
set visualbell
set cursorline
set ttyfast
set relativenumber
set undofile
"
syntax on
"
colorscheme desert
"
set nu

inoremap jj <ESC>

" Use two spaces for indentation
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Show white space
set list
set listchars=tab:▸\ ,trail:.,extends:#,nbsp:.,eol:¬

set nobackup
set noswapfile

" use Firefox-like mapping for navigating tabs
nnoremap <C-tab> :tabn<CR>

" use Enter / shift-Enter to insert newline
nmap <CR> o<Esc>k
"nmap <C-CR> O<Esc>j

" handle long lines correctly
" what does this do, exactly?
set wrap
set textwidth=79
set formatoptions=qrn1
" set colorcolumn=85
