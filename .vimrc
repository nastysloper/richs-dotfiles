"
set nocompatible showcmd showmode modelines=0
set visualbell
set cursorline
set ttyfast
set relativenumber
set undofile
" What are these two for?
set nobackup
set noswapfile
"
colorscheme desert

" for more efficient editing:
let mapleader = ","
inoremap jj <ESC>
nnoremap <leader>s :w<CR>
" show hidden files in NERDTree
let NERDTreeShowHidden=1

" Use two spaces for indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Show white space
set list
" set listchars=tab:▸\ ,trail:.,extends:#,nbsp:.,eol:¬

" use Firefox-like mapping for navigating tabs
map <D-S-]> gt
map <D-S-[> gT
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>

" use Enter / shift-Enter to insert newline
nmap <CR> o<Esc>k
"nmap <C-CR> O<Esc>j

" handle long lines correctly
" what does this do, exactly?
set wrap
set textwidth=79
set formatoptions=qrn1
" set colorcolumn=85

" Searching
" Do not use vim regex
nnoremap / /\v
vnoremap / /\v
" all lowercase string will search case-insensitive
set ignorecase
set smartcase
" apply substitutions globally on lines
set gdefault
" Highlight matches
set incsearch
set showmatch
set hlsearch
" press leader space to clear highlighting
nnoremap <leader><space> :noh<cr>
" match bracket pairing easier
nnoremap <tab> %
vnoremap <tab> %

execute pathogen#infect()
