" echom >^.^< this needs quotes to work.
" how to execute a carriage return after echom?
" iabbrev tmp temperature

execute pathogen#infect()

" show hidden files in NERDTree
let NERDTreeShowHidden=1

set nocompatible showcmd showmode modelines=0
set visualbell
set cursorline
set ttyfast
set undofile
set nu
" What are these two for?
set nobackup
set noswapfile

colorscheme desert

" for more efficient editing:
let mapleader = ","
" type ,ev to edit vimrc
nnoremap <leader>ev :tabe $MYVIMRC<CR>
nnoremap <leader>sev :vsp $MYVIMRC<CR>
" source mapping
nnoremap <leader>sv :source $MYVIMRC<CR>
inoremap jk <ESC>
nnoremap <leader>s :w<CR>

" control d do delete a line in insert mode (caps + d)
:inoremap <c-d> <esc>ddi
" use control u to UPPERCASE in INSERT mode (caps + u)
:inoremap <c-u> <esc>gUiw<c-A> 
" to uppercase in normal MODE: gUiw
" to downcase: guiw

" Use two spaces for indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set list

" use Firefox-like mapping for navigating tabs. Command + {n}
" S is shift -- I believe these are not case-sensitive, see <cr>
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

" handle long lines correctly
" what does this do, exactly?
set wrap
set textwidth=79
set formatoptions=qrn1
" set colorcolumn=85

" SEARCHING
" Do not use vim regex, user perl
nnoremap / /\v
vnoremap / /\v
" all lowercase string will search case-insensitive
set ignorecase
set smartcase
" apply substitutions globally on lines
" append the g if you want first-only substitution.
set gdefault

" Highlight matches
set incsearch
set showmatch
set hlsearch

" match bracket pairing easier
nnoremap <tab> %
vnoremap <tab> %

function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set nornu
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<CR>

