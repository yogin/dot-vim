execute pathogen#infect()
syntax on
colorscheme desert
let mapleader = ','

au FocusLost * :wa

set number
set visualbell

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=2

set encoding=utf-8
set autoindent
set smartindent
set showmode
set showcmd
set is
set ic
set scs
set virtualedit=onemore
set history=1000

set laststatus=2
set cursorline
set ttyfast
set ruler

set ignorecase
set smartcase

set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

nnoremap <tab> %
vnoremap <tab> %
set colorcolumn=80

"set list
"set listchars=tab:▸\ ,eol:¬

" Mappings
inoremap kj <Esc>
map <leader>sl :vsplit<CR><C-W>l
map <leader>sh :vsplit<CR><C-W>h
map <leader>sj :split<CR><C-W>j
map <leader>sJ :split<CR><C-W>jG
map <leader>sk :split<CR>
map <leader>sK :split<CR>gg
map <leader>t :tabnew<CR>

map gj <C-w>j
map gk <C-w>k
map gl <C-w>l
map gh <C-w>h

nnoremap <C-h> gT
nnoremap <C-l> gt

" clean all trailing whitespaces in file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" reselect pasted text
nnoremap <leader>v V`]


